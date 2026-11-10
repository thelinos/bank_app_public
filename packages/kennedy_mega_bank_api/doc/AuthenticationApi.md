# kennedy_mega_bank_api.api.AuthenticationApi

## Load the API package
```dart
import 'package:kennedy_mega_bank_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticationCreateUserPost**](AuthenticationApi.md#authenticationcreateuserpost) | **POST** /authentication/create-user | Register a user
[**authenticationForgotPasswordPost**](AuthenticationApi.md#authenticationforgotpasswordpost) | **POST** /authentication/forgot-password | Request a password reset email
[**authenticationGoogleCallbackGet**](AuthenticationApi.md#authenticationgooglecallbackget) | **GET** /authentication/google/callback | Complete Google OAuth authentication
[**authenticationGoogleGet**](AuthenticationApi.md#authenticationgoogleget) | **GET** /authentication/google | Start Google OAuth authentication
[**authenticationLoginPost**](AuthenticationApi.md#authenticationloginpost) | **POST** /authentication/login | Log in with email and password
[**authenticationLogoutPost**](AuthenticationApi.md#authenticationlogoutpost) | **POST** /authentication/logout | Log out and clear authentication cookies
[**authenticationMeGet**](AuthenticationApi.md#authenticationmeget) | **GET** /authentication/me | Get the current authenticated user and accounts
[**authenticationPhoneSendOtpPost**](AuthenticationApi.md#authenticationphonesendotppost) | **POST** /authentication/phone/send-otp | Send a one-time password to a phone number
[**authenticationPhoneVerifyOtpPost**](AuthenticationApi.md#authenticationphoneverifyotppost) | **POST** /authentication/phone/verify-otp | Verify a phone OTP and authenticate the user
[**authenticationRefreshPost**](AuthenticationApi.md#authenticationrefreshpost) | **POST** /authentication/refresh | Rotate the refresh token and issue new authentication cookies
[**authenticationResetPasswordPost**](AuthenticationApi.md#authenticationresetpasswordpost) | **POST** /authentication/reset-password | Set a new password using a reset token
[**authenticationSendVerificationEmailPost**](AuthenticationApi.md#authenticationsendverificationemailpost) | **POST** /authentication/send-verification-email | Send an email verification link
[**authenticationVerifyEmailGet**](AuthenticationApi.md#authenticationverifyemailget) | **GET** /authentication/verify-email | Verify an email address using its token


# **authenticationCreateUserPost**
> CreatedUser authenticationCreateUserPost(emailPasswordRequest)

Register a user

### Example
```dart
import 'package:kennedy_mega_bank_api/api.dart';

final api = KennedyMegaBankApi().getAuthenticationApi();
final EmailPasswordRequest emailPasswordRequest = ; // EmailPasswordRequest | 

try {
    final response = api.authenticationCreateUserPost(emailPasswordRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthenticationApi->authenticationCreateUserPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailPasswordRequest** | [**EmailPasswordRequest**](EmailPasswordRequest.md)|  | 

### Return type

[**CreatedUser**](CreatedUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticationForgotPasswordPost**
> MessageResponse authenticationForgotPasswordPost(emailRequest)

Request a password reset email

Returns a generic success response whether or not an account exists for the email.

### Example
```dart
import 'package:kennedy_mega_bank_api/api.dart';

final api = KennedyMegaBankApi().getAuthenticationApi();
final EmailRequest emailRequest = ; // EmailRequest | 

try {
    final response = api.authenticationForgotPasswordPost(emailRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthenticationApi->authenticationForgotPasswordPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailRequest** | [**EmailRequest**](EmailRequest.md)|  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticationGoogleCallbackGet**
> authenticationGoogleCallbackGet(state)

Complete Google OAuth authentication

### Example
```dart
import 'package:kennedy_mega_bank_api/api.dart';

final api = KennedyMegaBankApi().getAuthenticationApi();
final String state = state_example; // String | 

try {
    api.authenticationGoogleCallbackGet(state);
} on DioException catch (e) {
    print('Exception when calling AuthenticationApi->authenticationGoogleCallbackGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **state** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticationGoogleGet**
> authenticationGoogleGet()

Start Google OAuth authentication

### Example
```dart
import 'package:kennedy_mega_bank_api/api.dart';

final api = KennedyMegaBankApi().getAuthenticationApi();

try {
    api.authenticationGoogleGet();
} on DioException catch (e) {
    print('Exception when calling AuthenticationApi->authenticationGoogleGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticationLoginPost**
> CreatedUser authenticationLoginPost(emailPasswordRequest)

Log in with email and password

### Example
```dart
import 'package:kennedy_mega_bank_api/api.dart';

final api = KennedyMegaBankApi().getAuthenticationApi();
final EmailPasswordRequest emailPasswordRequest = ; // EmailPasswordRequest | 

try {
    final response = api.authenticationLoginPost(emailPasswordRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthenticationApi->authenticationLoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailPasswordRequest** | [**EmailPasswordRequest**](EmailPasswordRequest.md)|  | 

### Return type

[**CreatedUser**](CreatedUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticationLogoutPost**
> MessageResponse authenticationLogoutPost()

Log out and clear authentication cookies

### Example
```dart
import 'package:kennedy_mega_bank_api/api.dart';

final api = KennedyMegaBankApi().getAuthenticationApi();

try {
    final response = api.authenticationLogoutPost();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthenticationApi->authenticationLogoutPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticationMeGet**
> UserEnvelope authenticationMeGet()

Get the current authenticated user and accounts

### Example
```dart
import 'package:kennedy_mega_bank_api/api.dart';
// TODO Configure API key authorization: accessTokenCookie
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessTokenCookie').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessTokenCookie').apiKeyPrefix = 'Bearer';

final api = KennedyMegaBankApi().getAuthenticationApi();

try {
    final response = api.authenticationMeGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthenticationApi->authenticationMeGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserEnvelope**](UserEnvelope.md)

### Authorization

[accessTokenCookie](../README.md#accessTokenCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticationPhoneSendOtpPost**
> OtpSentResponse authenticationPhoneSendOtpPost(sendOtpRequest)

Send a one-time password to a phone number

### Example
```dart
import 'package:kennedy_mega_bank_api/api.dart';

final api = KennedyMegaBankApi().getAuthenticationApi();
final SendOtpRequest sendOtpRequest = ; // SendOtpRequest | 

try {
    final response = api.authenticationPhoneSendOtpPost(sendOtpRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthenticationApi->authenticationPhoneSendOtpPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendOtpRequest** | [**SendOtpRequest**](SendOtpRequest.md)|  | 

### Return type

[**OtpSentResponse**](OtpSentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticationPhoneVerifyOtpPost**
> UserEnvelope authenticationPhoneVerifyOtpPost(verifyOtpRequest)

Verify a phone OTP and authenticate the user

### Example
```dart
import 'package:kennedy_mega_bank_api/api.dart';

final api = KennedyMegaBankApi().getAuthenticationApi();
final VerifyOtpRequest verifyOtpRequest = ; // VerifyOtpRequest | 

try {
    final response = api.authenticationPhoneVerifyOtpPost(verifyOtpRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthenticationApi->authenticationPhoneVerifyOtpPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verifyOtpRequest** | [**VerifyOtpRequest**](VerifyOtpRequest.md)|  | 

### Return type

[**UserEnvelope**](UserEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticationRefreshPost**
> UserEnvelope authenticationRefreshPost()

Rotate the refresh token and issue new authentication cookies

### Example
```dart
import 'package:kennedy_mega_bank_api/api.dart';
// TODO Configure API key authorization: refreshTokenCookie
//defaultApiClient.getAuthentication<ApiKeyAuth>('refreshTokenCookie').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('refreshTokenCookie').apiKeyPrefix = 'Bearer';

final api = KennedyMegaBankApi().getAuthenticationApi();

try {
    final response = api.authenticationRefreshPost();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthenticationApi->authenticationRefreshPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserEnvelope**](UserEnvelope.md)

### Authorization

[refreshTokenCookie](../README.md#refreshTokenCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticationResetPasswordPost**
> MessageResponse authenticationResetPasswordPost(resetPasswordRequest)

Set a new password using a reset token

### Example
```dart
import 'package:kennedy_mega_bank_api/api.dart';

final api = KennedyMegaBankApi().getAuthenticationApi();
final ResetPasswordRequest resetPasswordRequest = ; // ResetPasswordRequest | 

try {
    final response = api.authenticationResetPasswordPost(resetPasswordRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthenticationApi->authenticationResetPasswordPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resetPasswordRequest** | [**ResetPasswordRequest**](ResetPasswordRequest.md)|  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticationSendVerificationEmailPost**
> MessageResponse authenticationSendVerificationEmailPost(emailRequest)

Send an email verification link

### Example
```dart
import 'package:kennedy_mega_bank_api/api.dart';

final api = KennedyMegaBankApi().getAuthenticationApi();
final EmailRequest emailRequest = ; // EmailRequest | 

try {
    final response = api.authenticationSendVerificationEmailPost(emailRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthenticationApi->authenticationSendVerificationEmailPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailRequest** | [**EmailRequest**](EmailRequest.md)|  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticationVerifyEmailGet**
> MessageResponse authenticationVerifyEmailGet(token)

Verify an email address using its token

### Example
```dart
import 'package:kennedy_mega_bank_api/api.dart';

final api = KennedyMegaBankApi().getAuthenticationApi();
final String token = token_example; // String | 

try {
    final response = api.authenticationVerifyEmailGet(token);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthenticationApi->authenticationVerifyEmailGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

