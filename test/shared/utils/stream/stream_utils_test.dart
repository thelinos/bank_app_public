import "package:bank_app/shared/utils/stream/model/retry_behavior.model.dart";
import "package:bank_app/shared/utils/stream/stream.utils.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
  group("StreamUtils.retryFrom", () {
    test("creates a fresh source after a retriable error", () async {
      var sourceAttempts = 0;
      var retryAttempts = 0;

      final events = await StreamUtils.retryFrom<int>(
        () {
          sourceAttempts += 1;
          if (sourceAttempts == 1) {
            return Stream<int>.error(Exception("temporary failure"));
          }
          return Stream<int>.value(42);
        },
        retryBehavior: RetryBehavior(
          maxAttempts: 1,
          onDelayCalculated: (_) => Duration.zero,
        ),
        onRetry: (_, {required attempt}) {
          retryAttempts = attempt;
        },
        retryIf: (_) => true,
      ).toList();

      expect(events, [42]);
      expect(sourceAttempts, 2);
      expect(retryAttempts, 1);
    });
  });
}
