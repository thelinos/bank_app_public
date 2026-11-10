import "package:bank_app/shared/app/bank_app.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
  group("App", () {
    testWidgets("renders Bank App", (tester) async {
      await tester.pumpWidget(const BankApp());
      expect(find.byType(BankApp), findsOneWidget);
    });
  });
}
