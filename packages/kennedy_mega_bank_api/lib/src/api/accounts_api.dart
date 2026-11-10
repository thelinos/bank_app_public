//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import "dart:async";
import "dart:convert";

import "package:dio/dio.dart";
import "package:kennedy_mega_bank_api/src/deserialize.dart";
import "package:kennedy_mega_bank_api/src/model/account_envelope.dart";
import "package:kennedy_mega_bank_api/src/model/create_account_request.dart";

class AccountsApi {
  const AccountsApi(this._dio);

  final Dio _dio;

  /// Create a checking or savings account
  ///
  ///
  /// Parameters:
  /// * [createAccountRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AccountEnvelope] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AccountEnvelope>> accountsPost({
    required CreateAccountRequest createAccountRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const path = "/accounts";
    final options = Options(
      method: "POST",
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        "secure": <Map<String, String>>[
          {
            "type": "apiKey",
            "name": "accessTokenCookie",
            "keyName": "accessToken",
            "where": "",
          },
        ],
        ...?extra,
      },
      contentType: "application/json",
      validateStatus: validateStatus,
    );

    dynamic bodyData;

    try {
      bodyData = jsonEncode(createAccountRequest);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: options.compose(_dio.options, path),
        error: error,
        stackTrace: stackTrace,
      );
    }

    final response = await _dio.request<Object>(
      path,
      data: bodyData,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AccountEnvelope? responseData;

    try {
      final rawData = response.data;
      responseData = rawData == null
          ? null
          : deserialize<AccountEnvelope, AccountEnvelope>(
              rawData,
              "AccountEnvelope",
            );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AccountEnvelope>(
      data: responseData,
      headers: response.headers,
      isRedirect: response.isRedirect,
      requestOptions: response.requestOptions,
      redirects: response.redirects,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      extra: response.extra,
    );
  }
}
