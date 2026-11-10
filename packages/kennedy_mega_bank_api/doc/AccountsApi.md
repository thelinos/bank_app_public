# kennedy_mega_bank_api.api.AccountsApi

## Load the API package
```dart
import 'package:kennedy_mega_bank_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountsPost**](AccountsApi.md#accountspost) | **POST** /accounts | Create a checking or savings account


# **accountsPost**
> AccountEnvelope accountsPost(createAccountRequest)

Create a checking or savings account

### Example
```dart
import 'package:kennedy_mega_bank_api/api.dart';
// TODO Configure API key authorization: accessTokenCookie
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessTokenCookie').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessTokenCookie').apiKeyPrefix = 'Bearer';

final api = KennedyMegaBankApi().getAccountsApi();
final CreateAccountRequest createAccountRequest = ; // CreateAccountRequest | 

try {
    final response = api.accountsPost(createAccountRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AccountsApi->accountsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAccountRequest** | [**CreateAccountRequest**](CreateAccountRequest.md)|  | 

### Return type

[**AccountEnvelope**](AccountEnvelope.md)

### Authorization

[accessTokenCookie](../README.md#accessTokenCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

