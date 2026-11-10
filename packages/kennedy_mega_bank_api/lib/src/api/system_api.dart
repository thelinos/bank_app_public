//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import "dart:async";
// ignore: unused_import
import "dart:convert";

import "package:dio/dio.dart";
import "package:kennedy_mega_bank_api/src/deserialize.dart";
import "package:kennedy_mega_bank_api/src/model/health_get200_response.dart";

class SystemApi {
  const SystemApi(this._dio);

  final Dio _dio;

  /// Check API and database environment status
  ///
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [HealthGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<HealthGet200Response>> healthGet({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const path = "/health";
    final options = Options(
      method: "GET",
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{"secure": <Map<String, String>>[], ...?extra},
      validateStatus: validateStatus,
    );

    final response = await _dio.request<Object>(
      path,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    HealthGet200Response? responseData;

    try {
      final rawData = response.data;
      responseData = rawData == null
          ? null
          : deserialize<HealthGet200Response, HealthGet200Response>(
              rawData,
              "HealthGet200Response",
            );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<HealthGet200Response>(
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
