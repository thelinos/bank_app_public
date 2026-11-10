//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import "package:dio/dio.dart";
import "package:kennedy_mega_bank_api/src/auth/auth.dart";

class ApiKeyAuthInterceptor extends AuthInterceptor {
  final Map<String, String> apiKeys = {};

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final authInfo = getAuthInfo(
      options,
      (secure) => secure["type"] == "apiKey",
    );
    for (final info in authInfo) {
      final authName = info["name"]!;
      final authKeyName = info["keyName"]!;
      final authWhere = info["where"]!;
      final apiKey = apiKeys[authName];
      if (apiKey != null) {
        if (authWhere == "query") {
          options.queryParameters[authKeyName] = apiKey;
        } else {
          options.headers[authKeyName] = apiKey;
        }
      }
    }
    super.onRequest(options, handler);
  }
}
