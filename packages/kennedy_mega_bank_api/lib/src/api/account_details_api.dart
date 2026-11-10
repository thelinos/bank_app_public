//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import "dart:async";
import "dart:convert";

import "package:dio/dio.dart";
import "package:kennedy_mega_bank_api/src/deserialize.dart";
import "package:kennedy_mega_bank_api/src/model/name_request.dart";
import "package:kennedy_mega_bank_api/src/model/name_update_request.dart";
import "package:kennedy_mega_bank_api/src/model/profile_picture_request.dart";
import "package:kennedy_mega_bank_api/src/model/user_envelope.dart";

class AccountDetailsApi {
  const AccountDetailsApi(this._dio);

  final Dio _dio;

  /// Add a name to the current user profile
  ///
  ///
  /// Parameters:
  /// * [nameRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [UserEnvelope] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<UserEnvelope>> accountDetailsCollectNamePost({
    required NameRequest nameRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const path = "/account-details/collect-name";
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
      bodyData = jsonEncode(nameRequest);
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

    UserEnvelope? responseData;

    try {
      final rawData = response.data;
      responseData = rawData == null
          ? null
          : deserialize<UserEnvelope, UserEnvelope>(rawData, "UserEnvelope");
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<UserEnvelope>(
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

  /// Add a profile picture to the current user profile
  ///
  ///
  /// Parameters:
  /// * [profilePictureRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [UserEnvelope] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<UserEnvelope>> accountDetailsCollectProfilePicturePost({
    required ProfilePictureRequest profilePictureRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const path = "/account-details/collect-profile-picture";
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
      bodyData = jsonEncode(profilePictureRequest);
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

    UserEnvelope? responseData;

    try {
      final rawData = response.data;
      responseData = rawData == null
          ? null
          : deserialize<UserEnvelope, UserEnvelope>(rawData, "UserEnvelope");
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<UserEnvelope>(
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

  /// Update one or more name fields
  ///
  ///
  /// Parameters:
  /// * [nameUpdateRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [UserEnvelope] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<UserEnvelope>> accountDetailsUpdateNamePatch({
    required NameUpdateRequest nameUpdateRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const path = "/account-details/update-name";
    final options = Options(
      method: "PATCH",
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
      bodyData = jsonEncode(nameUpdateRequest);
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

    UserEnvelope? responseData;

    try {
      final rawData = response.data;
      responseData = rawData == null
          ? null
          : deserialize<UserEnvelope, UserEnvelope>(rawData, "UserEnvelope");
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<UserEnvelope>(
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

  /// Update the current user profile picture
  ///
  ///
  /// Parameters:
  /// * [profilePictureRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [UserEnvelope] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<UserEnvelope>> accountDetailsUpdateProfilePicturePatch({
    required ProfilePictureRequest profilePictureRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const path = "/account-details/update-profile-picture";
    final options = Options(
      method: "PATCH",
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
      bodyData = jsonEncode(profilePictureRequest);
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

    UserEnvelope? responseData;

    try {
      final rawData = response.data;
      responseData = rawData == null
          ? null
          : deserialize<UserEnvelope, UserEnvelope>(rawData, "UserEnvelope");
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<UserEnvelope>(
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
