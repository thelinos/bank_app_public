import "package:bank_app/features/dashboard/enum/transaction_list_indicator.dart"
    show TransactionListIndicator;
import "package:bank_app/shared/common/model/customer/customer_model.dart"
    show CustomerModel;
import "package:bank_app/shared/common/model/customer_static_data/customer_static_data_model.dart"
    show CustomerStaticDataModel;
import "package:bank_app/shared/common/model/customer_transaction_data/customer_transaction_data_model.dart"
    show CustomerTransactionDataModel;
import "package:fast_immutable_collections/fast_immutable_collections.dart"
    show IList, IListConst;
import "package:flutter/material.dart";

abstract class Constants {
  static const kStartGradients = LinearGradient(
    colors: [
      Color(0xff022E64),
      Color(0xff022E64),
      Color(0xff022E64),
      Color(0xff022E64),
      Color(0xff004395),
      Color(0xff004395),
      Color(0xff00408F),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const _kAccountDetailCardLightGradientColor = Color(0xFFE0AD0F);
  static final Color _kAccountDetailCardDarkGradientColor = const Color(
    0xFFA07801,
  ).withValues(alpha: .74);

  static LinearGradient kAccountDetailCardGradient = LinearGradient(
    begin: .topCenter,
    end: .bottomCenter,
    colors: <Color>[
      _kAccountDetailCardLightGradientColor,
      _kAccountDetailCardDarkGradientColor,
    ],
  );

  static const kCurrentAppDefaultTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: .w600,
    fontSize: 14,
    height: 1.2,
  );

  static const CustomerStaticDataModel _customerStaticData =
      CustomerStaticDataModel(
        customerName: "John Jimoh",
        gender: .male,
        title: "Mr.",
      );

  static final IList<CustomerTransactionDataModel> _customerTransactionData =
      IListConst([
        CustomerTransactionDataModel(
          transactionAmount: 10000,
          transactionDirection: .credit,
          transactionNarration: .deposit,
          transactionDate: DateTime(2026, 10, 27),
        ),
        CustomerTransactionDataModel(
          transactionAmount: 1000,
          transactionDirection: .debit,
          transactionNarration: .withdrawal,
          transactionDate: DateTime(2026, 10, 27),
        ),
        CustomerTransactionDataModel(
          transactionAmount: 1500,
          transactionDirection: .credit,
          transactionNarration: .inflow,
          transactionDate: DateTime(2026, 10, 27),
        ),
        CustomerTransactionDataModel(
          transactionAmount: 50,
          transactionDirection: .debit,
          transactionNarration: .gift,
          transactionDate: DateTime(2026, 10, 27),
        ),
      ]);

  static final customerTestData = CustomerModel(
    customerStaticData: _customerStaticData,
    customerTransactionData: _customerTransactionData,
  );

  static IList<CustomerTransactionDataModel> filterTransactions(
    TransactionListIndicator currentTransactionsIndicator,
  ) => customerTestData.customerTransactionData.retainWhere((
    currentTransaction,
  ) {
    final currentIndicator = currentTransactionsIndicator.transactionsIndicator;
    if (currentTransactionsIndicator.isAllTransactions) return true;
    final currentDirectionRecord =
        currentTransaction.transactionDirection.directionRecord;

    return currentIndicator == currentDirectionRecord.localValue;
  });
}
