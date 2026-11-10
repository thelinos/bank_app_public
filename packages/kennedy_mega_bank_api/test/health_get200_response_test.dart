import 'package:test/test.dart';
import 'package:kennedy_mega_bank_api/kennedy_mega_bank_api.dart';

// tests for HealthGet200Response
void main() {
  HealthGet200Response? instance = /* HealthGet200Response(...) */ null;

  final api = KennedyMegaBankApi(basePathOverride: r'http://localhost:3000/');

  group(HealthGet200Response, () {
    // String status
    test('to test the property `status`', () async {
      final healthGetResponse = await api.getSystemApi().healthGet();
      instance = healthGetResponse.data;
      expect(instance?.status, "ok");
    });

    // String environment
    test('to test the property `environment`', () async {
      final healthGetResponse = await api.getSystemApi().healthGet();
      instance = healthGetResponse.data;
      expect(instance?.environment, "development");
    });

    // String database
    test('to test the property `database`', () async {
      final healthGetResponse = await api.getSystemApi().healthGet();
      instance = healthGetResponse.data;
      expect(instance?.database, HealthGet200ResponseDatabaseEnum.sQLite);
    });
  });
}
