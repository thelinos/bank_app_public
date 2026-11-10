# kennedy_mega_bank_api.api.TransactionsApi

## Load the API package
```dart
import 'package:kennedy_mega_bank_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**transactionsPost**](TransactionsApi.md#transactionspost) | **POST** /transactions | Create a debit or authorized credit transaction


# **transactionsPost**
> TransactionEnvelope transactionsPost(idempotencyKey, createTransactionRequest)

Create a debit or authorized credit transaction

A unique Idempotency-Key is required. Repeating the same key and request replays the original response; reusing the key for a different request returns 409. Credit transactions require an authorized ledger operator.

### Example
```dart
import 'package:kennedy_mega_bank_api/api.dart';
// TODO Configure API key authorization: accessTokenCookie
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessTokenCookie').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessTokenCookie').apiKeyPrefix = 'Bearer';

final api = KennedyMegaBankApi().getTransactionsApi();
final String idempotencyKey = idempotencyKey_example; // String | 
final CreateTransactionRequest createTransactionRequest = ; // CreateTransactionRequest | 

try {
    final response = api.transactionsPost(idempotencyKey, createTransactionRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TransactionsApi->transactionsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idempotencyKey** | **String**|  | 
 **createTransactionRequest** | [**CreateTransactionRequest**](CreateTransactionRequest.md)|  | 

### Return type

[**TransactionEnvelope**](TransactionEnvelope.md)

### Authorization

[accessTokenCookie](../README.md#accessTokenCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

