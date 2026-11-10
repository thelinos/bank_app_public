import "dart:convert";

import "package:bank_app/shared/utils/stream/sse_data_stream.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
  group("parseSseData", () {
    test(
      "parses events split across chunks and joins multiline data",
      () async {
        final events = await parseSseData(
          Stream<List<int>>.fromIterable([
            utf8.encode(": keepalive\n"),
            utf8.encode("""event: current-user\ndata: {"id":\n"""),
            utf8.encode("""data: "user-1"}\n\n"""),
            utf8.encode("data: null\n\n"),
          ]),
        ).toList();

        expect(events, ["""{"id":\n"user-1"}""", "null"]);
      },
    );

    test("dispatches a final event when the connection closes", () async {
      final events = await parseSseData(
        Stream<List<int>>.value(utf8.encode("""data: {"id":"user-1"}""")),
      ).toList();

      expect(events, ["""{"id":"user-1"}"""]);
    });
  });
}
