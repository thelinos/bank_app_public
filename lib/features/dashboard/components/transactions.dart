import "package:bank_app/features/dashboard/components/transaction_tile.dart"
    show TransactionTile;
import "package:bank_app/features/dashboard/enum/transaction_list_indicator.dart"
    show TransactionListIndicator;
import "package:bank_app/shared/common/constants.dart" show Constants;
import "package:bank_app/shared/common/model/customer_transaction_data/customer_transaction_data_model.dart";
import "package:fast_immutable_collections/fast_immutable_collections.dart"
    show IList;
import "package:flutter/material.dart";

class const Transactions({
  required final TransactionListIndicator _currentTransactionsIndicator,
  super.key,
}) extends StatelessWidget {
  IList<CustomerTransactionDataModel> get _filteredTransactions =>
      Constants.filterTransactions(_currentTransactionsIndicator);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _filteredTransactions.length,
      itemBuilder: (context, index) {
        final transaction = _filteredTransactions.get(index);

        return TransactionTile(transaction: transaction);
      },
      separatorBuilder: (context, _) {
        return Divider(
          height: 1.5,
          color: const Color(0xFFE1E6F0).withValues(alpha: .6),
        );
      },
    );
  }
}
