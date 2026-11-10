# kennedy_mega_bank_api.api.AccountDetailsApi

## Load the API package
```dart
import 'package:kennedy_mega_bank_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountDetailsCollectNamePost**](AccountDetailsApi.md#accountdetailscollectnamepost) | **POST** /account-details/collect-name | Add a name to the current user profile
[**accountDetailsCollectProfilePicturePost**](AccountDetailsApi.md#accountdetailscollectprofilepicturepost) | **POST** /account-details/collect-profile-picture | Add a profile picture to the current user profile
[**accountDetailsUpdateNamePatch**](AccountDetailsApi.md#accountdetailsupdatenamepatch) | **PATCH** /account-details/update-name | Update one or more name fields
[**accountDetailsUpdateProfilePicturePatch**](AccountDetailsApi.md#accountdetailsupdateprofilepicturepatch) | **PATCH** /account-details/update-profile-picture | Update the current user profile picture


# **accountDetailsCollectNamePost**
> UserEnvelope accountDetailsCollectNamePost(nameRequest)

Add a name to the current user profile

### Example
```dart
import 'package:kennedy_mega_bank_api/api.dart';
// TODO Configure API key authorization: accessTokenCookie
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessTokenCookie').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessTokenCookie').apiKeyPrefix = 'Bearer';

final api = KennedyMegaBankApi().getAccountDetailsApi();
final NameRequest nameRequest = ; // NameRequest | 

try {
    final response = api.accountDetailsCollectNamePost(nameRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountDetailsApi->accountDetailsCollectNamePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nameRequest** | [**NameRequest**](NameRequest.md)|  | 

### Return type

[**UserEnvelope**](UserEnvelope.md)

### Authorization

[accessTokenCookie](../README.md#accessTokenCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountDetailsCollectProfilePicturePost**
> UserEnvelope accountDetailsCollectProfilePicturePost(profilePictureRequest)

Add a profile picture to the current user profile

### Example
```dart
import 'package:kennedy_mega_bank_api/api.dart';
// TODO Configure API key authorization: accessTokenCookie
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessTokenCookie').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessTokenCookie').apiKeyPrefix = 'Bearer';

final api = KennedyMegaBankApi().getAccountDetailsApi();
final ProfilePictureRequest profilePictureRequest = ; // ProfilePictureRequest | 

try {
    final response = api.accountDetailsCollectProfilePicturePost(profilePictureRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountDetailsApi->accountDetailsCollectProfilePicturePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profilePictureRequest** | [**ProfilePictureRequest**](ProfilePictureRequest.md)|  | 

### Return type

[**UserEnvelope**](UserEnvelope.md)

### Authorization

[accessTokenCookie](../README.md#accessTokenCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountDetailsUpdateNamePatch**
> UserEnvelope accountDetailsUpdateNamePatch(nameUpdateRequest)

Update one or more name fields

### Example
```dart
import 'package:kennedy_mega_bank_api/api.dart';
// TODO Configure API key authorization: accessTokenCookie
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessTokenCookie').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessTokenCookie').apiKeyPrefix = 'Bearer';

final api = KennedyMegaBankApi().getAccountDetailsApi();
final NameUpdateRequest nameUpdateRequest = ; // NameUpdateRequest | 

try {
    final response = api.accountDetailsUpdateNamePatch(nameUpdateRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountDetailsApi->accountDetailsUpdateNamePatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nameUpdateRequest** | [**NameUpdateRequest**](NameUpdateRequest.md)|  | 

### Return type

[**UserEnvelope**](UserEnvelope.md)

### Authorization

[accessTokenCookie](../README.md#accessTokenCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountDetailsUpdateProfilePicturePatch**
> UserEnvelope accountDetailsUpdateProfilePicturePatch(profilePictureRequest)

Update the current user profile picture

### Example
```dart
import 'package:kennedy_mega_bank_api/api.dart';
// TODO Configure API key authorization: accessTokenCookie
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessTokenCookie').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessTokenCookie').apiKeyPrefix = 'Bearer';

final api = KennedyMegaBankApi().getAccountDetailsApi();
final ProfilePictureRequest profilePictureRequest = ; // ProfilePictureRequest | 

try {
    final response = api.accountDetailsUpdateProfilePicturePatch(profilePictureRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountDetailsApi->accountDetailsUpdateProfilePicturePatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profilePictureRequest** | [**ProfilePictureRequest**](ProfilePictureRequest.md)|  | 

### Return type

[**UserEnvelope**](UserEnvelope.md)

### Authorization

[accessTokenCookie](../README.md#accessTokenCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

