//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import "dart:convert";

import "package:dio/dio.dart";
import "package:kennedy_mega_bank_api/src/auth/auth.dart";

class BasicAuthInfo {
  const BasicAuthInfo(this.username, this.password);
  final String username;
  final String password;
}

class BasicAuthInterceptor extends AuthInterceptor {
  final Map<String, BasicAuthInfo> authInfo = {};

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final metadataAuthInfo = getAuthInfo(
      options,
      (secure) =>
          (secure["type"] == "http" &&
              secure["scheme"]?.toLowerCase() == "basic") ||
          secure["type"] == "basic",
    );
    for (final info in metadataAuthInfo) {
      final authName = info["name"]!;
      final basicAuthInfo = authInfo[authName];
      if (basicAuthInfo != null) {
        final basicAuth =
            'Basic ${base64Encode(utf8.encode('${basicAuthInfo.username}:${basicAuthInfo.password}'))}';
        options.headers["Authorization"] = basicAuth;
        break;
      }
    }
    super.onRequest(options, handler);
  }
}
