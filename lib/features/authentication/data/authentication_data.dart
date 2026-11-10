import "dart:async";
import "dart:convert";
import "dart:io" show HttpException, SocketException;

import "package:bank_app/shared/core/bank_logger/bank_logger.dart"
    show BankLogger;
import "package:bank_app/shared/utils/stream/model/retry_behavior.model.dart"
    show RetryBehavior;
import "package:bank_app/shared/utils/stream/sse_data_stream.dart"
    show parseSseData;
import "package:bank_app/shared/utils/stream/stream.utils.dart"
    show StreamUtils;
import "package:dio/dio.dart"
    show CancelToken, DioException, Options, ResponseBody, ResponseType;
import "package:intl/intl.dart" show NumberFormat;
import "package:kennedy_mega_bank_api/kennedy_mega_bank_api.dart"
    show AuthenticationApi, KennedyMegaBankApi, UserEnvelope;
import "package:multiple_result/multiple_result.dart" show Result;

class AuthenticationData({required final KennedyMegaBankApi api}) {
  AuthenticationApi get _authApi {
    return api.getAuthenticationApi();
  }

  Result<Future<String?>, String> get logout {
    return Result.tryCatch<Future<String?>, String>(
      () async {
        final logoutResponse = await _authApi.authenticationLogoutPost();

        return logoutResponse.data?.message;
      },
      (error, stackTrace) {
        //TODO(thelinos): Add Dio package to the main app project to import key abstract classes for a DioException check

        return error.toString();
      },
    );
  }

  Stream<UserEnvelope?> get currentUserStream {
    return StreamUtils.retryFrom<UserEnvelope?>(
      _listenToCurrentUserEvents,
      retryBehavior: const RetryBehavior(maxAttempts: 5),
      onRetry: (exception, {required attempt}) {
        BankLogger.error("""
          Failed to listen to data because of $exception.
          Re-listening to current user data with exponential backoff at ${NumberFormat().format(attempt)}
          """);
      },
      retryIf: (exception) {
        if (exception is DioException) {
          final statusCode = exception.response?.statusCode;
          return statusCode == null ||
              statusCode == 408 ||
              statusCode == 429 ||
              statusCode >= 500;
        }

        return exception is HttpException ||
            exception is SocketException ||
            exception is TimeoutException;
      },
    );
  }

  Stream<UserEnvelope?> _listenToCurrentUserEvents() async* {
    final cancelToken = CancelToken();

    try {
      final response = await api.dio.get<ResponseBody>(
        "/authentication/me/stream",
        options: Options(
          headers: const {"Accept": "text/event-stream"},
          responseType: ResponseType.stream,
          receiveTimeout: Duration.zero,
          extra: const {
            "secure": [
              {
                "type": "apiKey",
                "name": "accessTokenCookie",
                "keyName": "accessToken",
                "where": "",
              },
            ],
          },
        ),
        cancelToken: cancelToken,
      );
      final body = response.data;
      if (body == null) {
        throw const FormatException("SSE response has no event stream");
      }

      await for (final eventData in parseSseData(body.stream)) {
        final decoded = jsonDecode(eventData);
        if (decoded == null) {
          yield null;
        } else if (decoded is Map<String, dynamic>) {
          yield UserEnvelope.fromJson(decoded);
        } else {
          throw const FormatException(
            "Current-user SSE events must contain a JSON object or null",
          );
        }
      }

      throw const HttpException("Current-user event stream closed");
    } finally {
      cancelToken.cancel();
    }
  }
}
