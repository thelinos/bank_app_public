import "dart:async";
import "dart:convert";

Stream<String> parseSseData(Stream<List<int>> bytes) async* {
  final dataLines = <String>[];

  await for (final line
      in bytes
          .map((chunk) => chunk.toList())
          .transform(utf8.decoder)
          .transform(const LineSplitter())) {
    if (line.isEmpty) {
      if (dataLines.isNotEmpty) {
        yield dataLines.join("\n");
        dataLines.clear();
      }
      continue;
    }

    if (line.startsWith(":")) {
      continue;
    }

    final separator = line.indexOf(":");
    final field = separator < 0 ? line : line.substring(0, separator);
    if (field != "data") {
      continue;
    }

    var value = separator < 0 ? "" : line.substring(separator + 1);
    if (value.startsWith(" ")) {
      value = value.substring(1);
    }
    dataLines.add(value);
  }

  if (dataLines.isNotEmpty) {
    yield dataLines.join("\n");
  }
}
