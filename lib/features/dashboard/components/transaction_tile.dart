import "package:bank_app/features/dashboard/components/transaction_direction_card.dart";
import "package:bank_app/shared/common/constants.dart" show Constants;
import "package:bank_app/shared/common/model/customer_transaction_data/customer_transaction_data_model.dart"
    show CustomerTransactionDataModel;
import "package:bank_app/shared/core/enums/transaction_direction.dart";
import "package:bank_app/shared/utils/number/number_formatter.dart"
    show NumberFormatter;
import "package:flutter/material.dart";
import "package:intl/intl.dart";

class const TransactionTile({
  required final CustomerTransactionDataModel _transaction,
  super.key,
}) extends StatelessWidget {
  int get _directionColorCode =>
      _transaction.transactionDirection.isDebit ? 0xFF022E64 : 0xFFE0AD0F;
  TextStyle get _transactionAmountTextStyle =>
      Constants.kCurrentAppDefaultTextStyle.copyWith(
        color: Colors.grey.shade900,
        fontWeight: .w700,
        fontSize: 16,
        height: 1.2,
      );

  TextStyle get _transactionDirectionTextStyle =>
      Constants.kCurrentAppDefaultTextStyle.copyWith(
        color: Color(_directionColorCode),
        fontWeight: .w700,
        fontSize: 12,
        height: 1.4,
        letterSpacing: .18,
      );

  TextStyle get _transactionNarrationTextStyle =>
      Constants.kCurrentAppDefaultTextStyle.copyWith(
        color: const Color(0xFF616161),
        fontWeight: .w400,
        fontSize: 12,
        height: 1.4,
        letterSpacing: .18,
      );

  TextStyle get _transactionDateTextStyle => _transactionNarrationTextStyle
      .copyWith(color: Colors.grey.shade900, fontSize: 10);

  @override
  Widget build(BuildContext context) {
    final formattedTransactionAmount = NumberFormatter.formatAmountToString(
      amount: _transaction.transactionAmount,
    );
    final formattedDate = DateFormat("dd-MM-yyyy")
        .format(_transaction.transactionDate);

    return ListTile(
      leading: CircleAvatar(backgroundColor: Color(_directionColorCode)),
      title: Row(
        spacing: 7,
        children: <Widget>[
          Text(formattedTransactionAmount, style: _transactionAmountTextStyle),
          TransactionDirectionCard(
            transactionDirection: _transaction.transactionDirection,
          ),
        ],
      ),
      subtitle: Text.rich(
        TextSpan(
          children: <InlineSpan>[
            TextSpan(text: "#", style: _transactionDirectionTextStyle),
            TextSpan(
              text: _transaction
                  .transactionNarration
                  .transactionNarration
                  .localValue,
              style: _transactionNarrationTextStyle,
            ),
          ],
        ),
      ),
      trailing: Text(formattedDate, style: _transactionDateTextStyle),
    );
  }
}
