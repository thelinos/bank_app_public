import 'package:test/test.dart';
import 'package:kennedy_mega_bank_api/kennedy_mega_bank_api.dart';


/// tests for TransactionsApi
void main() {
  final instance = KennedyMegaBankApi().getTransactionsApi();

  group(TransactionsApi, () {
    // Create a debit or authorized credit transaction
    //
    // A unique Idempotency-Key is required. Repeating the same key and request replays the original response; reusing the key for a different request returns 409. Credit transactions require an authorized ledger operator.
    //
    //Future<TransactionEnvelope> transactionsPost(String idempotencyKey, CreateTransactionRequest createTransactionRequest) async
    test('test transactionsPost', () async {
      // TODO
    });

  });
}
