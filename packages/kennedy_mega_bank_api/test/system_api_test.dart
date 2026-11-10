import 'package:test/test.dart';
import 'package:kennedy_mega_bank_api/kennedy_mega_bank_api.dart';

/// tests for SystemApi
void main() {
  final instance = KennedyMegaBankApi(
    basePathOverride: r'http://localhost:3000/',
  ).getSystemApi();

  group(SystemApi, () {
    // Check API and database environment status
    //
    //Future<HealthGet200Response> healthGet() async
    test('test healthGet', () async {
     expectAsync0<Future<HealthGet200Response?>>(() async {
        final healthResponse = await instance.healthGet();

        return healthResponse.data;
      }).call();
    });
  });
}
