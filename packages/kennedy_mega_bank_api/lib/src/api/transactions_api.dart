//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import "dart:async";
import "dart:convert";

import "package:dio/dio.dart";
import "package:kennedy_mega_bank_api/src/deserialize.dart";
import "package:kennedy_mega_bank_api/src/model/create_transaction_request.dart";
import "package:kennedy_mega_bank_api/src/model/transaction_envelope.dart";

class TransactionsApi {
  const TransactionsApi(this._dio);

  final Dio _dio;

  /// Create a debit or authorized credit transaction
  /// A unique Idempotency-Key is required. Repeating the same key and request replays the original response; reusing the key for a different request returns 409. Credit transactions require an authorized ledger operator.
  ///
  /// Parameters:
  /// * [idempotencyKey]
  /// * [createTransactionRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TransactionEnvelope] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TransactionEnvelope>> transactionsPost({
    required String idempotencyKey,
    required CreateTransactionRequest createTransactionRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const path = "/transactions";
    final options = Options(
      method: "POST",
      headers: <String, dynamic>{
        "Idempotency-Key": idempotencyKey,
        ...?headers,
      },
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
      bodyData = jsonEncode(createTransactionRequest);
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

    TransactionEnvelope? responseData;

    try {
      final rawData = response.data;
      responseData = rawData == null
          ? null
          : deserialize<TransactionEnvelope, TransactionEnvelope>(
              rawData,
              "TransactionEnvelope",
            );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TransactionEnvelope>(
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
