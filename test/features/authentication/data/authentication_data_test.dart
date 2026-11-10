import "dart:convert";
import "dart:io";

import "package:bank_app/features/authentication/data/authentication_data.dart";
import "package:flutter_test/flutter_test.dart";
import "package:kennedy_mega_bank_api/kennedy_mega_bank_api.dart"
    show KennedyMegaBankApi;

void main() {
  group("AuthenticationData.currentUserStream", () {
    late HttpServer server;
    late KennedyMegaBankApi api;

    setUp(() async {
      server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
      api = KennedyMegaBankApi(
        basePathOverride: "http://${server.address.address}:${server.port}",
      );
    });

    tearDown(() async {
      api.dio.close(force: true);
      await server.close(force: true);
    });

    test("emits current-user events and reconnects after a dropped connection", () async {
      var requestCount = 0;
      final requestPaths = <String>[];
      final acceptHeaders = <String?>[];

      server.listen((request) async {
        requestCount += 1;
        requestPaths.add(request.uri.path);
        acceptHeaders.add(request.headers.value(HttpHeaders.acceptHeader));

        request.response
          ..statusCode = HttpStatus.ok
          ..headers.contentType = ContentType(
            "text",
            "event-stream",
            charset: "utf-8",
          );
        request.response.write(
          "data: ${jsonEncode({
            "message": "User retrieved successfully",
            "status": 1,
            "user": {"id": requestCount == 1 ? "user-1" : "user-2", "email": "user$requestCount@example.test"},
          })}\n\n",
        );
        await request.response.flush();
        await request.response.close();
      });

      final envelopes = await AuthenticationData(api: api).currentUserStream
          .take(2)
          .timeout(const Duration(seconds: 5))
          .toList();

      expect(requestCount, 2);
      expect(requestPaths, [
        "/authentication/me/stream",
        "/authentication/me/stream",
      ]);
      expect(acceptHeaders, ["text/event-stream", "text/event-stream"]);
      expect(envelopes.map((envelope) => (envelope!.user as Map)["id"]), [
        "user-1",
        "user-2",
      ]);
    });
  });
}
