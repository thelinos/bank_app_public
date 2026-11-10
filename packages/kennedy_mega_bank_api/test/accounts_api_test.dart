import 'package:test/test.dart';
import 'package:kennedy_mega_bank_api/kennedy_mega_bank_api.dart';


/// tests for AccountsApi
void main() {
  final instance = KennedyMegaBankApi().getAccountsApi();

  group(AccountsApi, () {
    // Create a checking or savings account
    //
    //Future<AccountEnvelope> accountsPost(CreateAccountRequest createAccountRequest) async
    test('test accountsPost', () async {
      // TODO
    });

  });
}
