import "package:kennedy_mega_bank_api/kennedy_mega_bank_api.dart";
import "package:test/test.dart";

void main() {
  group("Freezed API models", () {
    test("supports copyWith and JSON round trips", () {
      const request = CreateAccountRequest(
        accountType: CreateAccountRequestAccountTypeEnum.checking,
        currency: "CAD",
      );

      final updatedRequest = request.copyWith(currency: "EUR");
      final decodedRequest = CreateAccountRequest.fromJson(request.toJson());

      expect(updatedRequest.currency, "EUR");
      expect(decodedRequest, request);
    });

    test("applies model defaults when deserializing JSON", () {
      final request = CreateAccountRequest.fromJson({
        "accountType": "checking",
      });

      expect(request.currency, "USD");
    });
  });
}
