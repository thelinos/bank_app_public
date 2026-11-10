# kennedy_mega_bank_api.api.SystemApi

## Load the API package
```dart
import 'package:kennedy_mega_bank_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthGet**](SystemApi.md#healthget) | **GET** /health | Check API and database environment status


# **healthGet**
> HealthGet200Response healthGet()

Check API and database environment status

### Example
```dart
import 'package:kennedy_mega_bank_api/api.dart';

final api = KennedyMegaBankApi().getSystemApi();

try {
    final response = api.healthGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling SystemApi->healthGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HealthGet200Response**](HealthGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

