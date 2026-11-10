//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import "dart:async";
import "dart:convert";

import "package:dio/dio.dart";
import "package:kennedy_mega_bank_api/src/deserialize.dart";
import "package:kennedy_mega_bank_api/src/model/created_user.dart";
import "package:kennedy_mega_bank_api/src/model/email_password_request.dart";
import "package:kennedy_mega_bank_api/src/model/email_request.dart";
import "package:kennedy_mega_bank_api/src/model/message_response.dart";
import "package:kennedy_mega_bank_api/src/model/otp_sent_response.dart";
import "package:kennedy_mega_bank_api/src/model/reset_password_request.dart";
import "package:kennedy_mega_bank_api/src/model/send_otp_request.dart";
import "package:kennedy_mega_bank_api/src/model/user_envelope.dart";
import "package:kennedy_mega_bank_api/src/model/verify_otp_request.dart";

class AuthenticationApi {
  const AuthenticationApi(this._dio);

  final Dio _dio;

  /// Register a user
  ///
  ///
  /// Parameters:
  /// * [emailPasswordRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CreatedUser] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CreatedUser>> authenticationCreateUserPost({
    required EmailPasswordRequest emailPasswordRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const path = "/authentication/create-user";
    final options = Options(
      method: "POST",
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{"secure": <Map<String, String>>[], ...?extra},
      contentType: "application/json",
      validateStatus: validateStatus,
    );

    dynamic bodyData;

    try {
      bodyData = jsonEncode(emailPasswordRequest);
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

    CreatedUser? responseData;

    try {
      final rawData = response.data;
      responseData = rawData == null
          ? null
          : deserialize<CreatedUser, CreatedUser>(rawData, "CreatedUser");
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CreatedUser>(
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

  /// Request a password reset email
  /// Returns a generic success response whether or not an account exists for the email.
  ///
  /// Parameters:
  /// * [emailRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [MessageResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<MessageResponse>> authenticationForgotPasswordPost({
    required EmailRequest emailRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const path = "/authentication/forgot-password";
    final options = Options(
      method: "POST",
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{"secure": <Map<String, String>>[], ...?extra},
      contentType: "application/json",
      validateStatus: validateStatus,
    );

    dynamic bodyData;

    try {
      bodyData = jsonEncode(emailRequest);
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

    MessageResponse? responseData;

    try {
      final rawData = response.data;
      responseData = rawData == null
          ? null
          : deserialize<MessageResponse, MessageResponse>(
              rawData,
              "MessageResponse",
            );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<MessageResponse>(
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

  /// Complete Google OAuth authentication
  ///
  ///
  /// Parameters:
  /// * [state]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> authenticationGoogleCallbackGet({
    required String state,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const path = "/authentication/google/callback";
    final options = Options(
      method: "GET",
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{"secure": <Map<String, String>>[], ...?extra},
      validateStatus: validateStatus,
    );

    final queryParameters = <String, dynamic>{"state": state};

    final response = await _dio.request<Object>(
      path,
      options: options,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return response;
  }

  /// Start Google OAuth authentication
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
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> authenticationGoogleGet({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const path = "/authentication/google";
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

    return response;
  }

  /// Log in with email and password
  ///
  ///
  /// Parameters:
  /// * [emailPasswordRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CreatedUser] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CreatedUser>> authenticationLoginPost({
    required EmailPasswordRequest emailPasswordRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const path = "/authentication/login";
    final options = Options(
      method: "POST",
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{"secure": <Map<String, String>>[], ...?extra},
      contentType: "application/json",
      validateStatus: validateStatus,
    );

    dynamic bodyData;

    try {
      bodyData = jsonEncode(emailPasswordRequest);
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

    CreatedUser? responseData;

    try {
      final rawData = response.data;
      responseData = rawData == null
          ? null
          : deserialize<CreatedUser, CreatedUser>(rawData, "CreatedUser");
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CreatedUser>(
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

  /// Log out and clear authentication cookies
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
  /// Returns a [Future] containing a [Response] with a [MessageResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<MessageResponse>> authenticationLogoutPost({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const path = "/authentication/logout";
    final options = Options(
      method: "POST",
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

    MessageResponse? responseData;

    try {
      final rawData = response.data;
      responseData = rawData == null
          ? null
          : deserialize<MessageResponse, MessageResponse>(
              rawData,
              "MessageResponse",
            );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<MessageResponse>(
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

  /// Get the current authenticated user and accounts
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
  /// Returns a [Future] containing a [Response] with a [UserEnvelope] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<UserEnvelope>> authenticationMeGet({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const path = "/authentication/me";
    final options = Options(
      method: "GET",
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
      validateStatus: validateStatus,
    );

    final response = await _dio.request<Object>(
      path,
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

  /// Send a one-time password to a phone number
  ///
  ///
  /// Parameters:
  /// * [sendOtpRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OtpSentResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<OtpSentResponse>> authenticationPhoneSendOtpPost({
    required SendOtpRequest sendOtpRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const path = "/authentication/phone/send-otp";
    final options = Options(
      method: "POST",
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{"secure": <Map<String, String>>[], ...?extra},
      contentType: "application/json",
      validateStatus: validateStatus,
    );

    dynamic bodyData;

    try {
      bodyData = jsonEncode(sendOtpRequest);
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

    OtpSentResponse? responseData;

    try {
      final rawData = response.data;
      responseData = rawData == null
          ? null
          : deserialize<OtpSentResponse, OtpSentResponse>(
              rawData,
              "OtpSentResponse",
            );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<OtpSentResponse>(
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

  /// Verify a phone OTP and authenticate the user
  ///
  ///
  /// Parameters:
  /// * [verifyOtpRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [UserEnvelope] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<UserEnvelope>> authenticationPhoneVerifyOtpPost({
    required VerifyOtpRequest verifyOtpRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const path = "/authentication/phone/verify-otp";
    final options = Options(
      method: "POST",
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{"secure": <Map<String, String>>[], ...?extra},
      contentType: "application/json",
      validateStatus: validateStatus,
    );

    dynamic bodyData;

    try {
      bodyData = jsonEncode(verifyOtpRequest);
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

  /// Rotate the refresh token and issue new authentication cookies
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
  /// Returns a [Future] containing a [Response] with a [UserEnvelope] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<UserEnvelope>> authenticationRefreshPost({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const path = "/authentication/refresh";
    final options = Options(
      method: "POST",
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        "secure": <Map<String, String>>[
          {
            "type": "apiKey",
            "name": "refreshTokenCookie",
            "keyName": "refreshToken",
            "where": "",
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final response = await _dio.request<Object>(
      path,
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

  /// Set a new password using a reset token
  ///
  ///
  /// Parameters:
  /// * [resetPasswordRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [MessageResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<MessageResponse>> authenticationResetPasswordPost({
    required ResetPasswordRequest resetPasswordRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const path = "/authentication/reset-password";
    final options = Options(
      method: "POST",
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{"secure": <Map<String, String>>[], ...?extra},
      contentType: "application/json",
      validateStatus: validateStatus,
    );

    dynamic bodyData;

    try {
      bodyData = jsonEncode(resetPasswordRequest);
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

    MessageResponse? responseData;

    try {
      final rawData = response.data;
      responseData = rawData == null
          ? null
          : deserialize<MessageResponse, MessageResponse>(
              rawData,
              "MessageResponse",
            );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<MessageResponse>(
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

  /// Send an email verification link
  ///
  ///
  /// Parameters:
  /// * [emailRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [MessageResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<MessageResponse>> authenticationSendVerificationEmailPost({
    required EmailRequest emailRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const path = "/authentication/send-verification-email";
    final options = Options(
      method: "POST",
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{"secure": <Map<String, String>>[], ...?extra},
      contentType: "application/json",
      validateStatus: validateStatus,
    );

    dynamic bodyData;

    try {
      bodyData = jsonEncode(emailRequest);
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

    MessageResponse? responseData;

    try {
      final rawData = response.data;
      responseData = rawData == null
          ? null
          : deserialize<MessageResponse, MessageResponse>(
              rawData,
              "MessageResponse",
            );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<MessageResponse>(
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

  /// Verify an email address using its token
  ///
  ///
  /// Parameters:
  /// * [token]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [MessageResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<MessageResponse>> authenticationVerifyEmailGet({
    required String token,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const path = "/authentication/verify-email";
    final options = Options(
      method: "GET",
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{"secure": <Map<String, String>>[], ...?extra},
      validateStatus: validateStatus,
    );

    final queryParameters = <String, dynamic>{"token": token};

    final response = await _dio.request<Object>(
      path,
      options: options,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    MessageResponse? responseData;

    try {
      final rawData = response.data;
      responseData = rawData == null
          ? null
          : deserialize<MessageResponse, MessageResponse>(
              rawData,
              "MessageResponse",
            );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<MessageResponse>(
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
