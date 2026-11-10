import "package:bank_app/shared/core/enums/transaction_direction.dart" show TransactionDirection;
import "package:bank_app/shared/core/enums/transaction_narration.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "customer_transaction_data_model.freezed.dart";
part "customer_transaction_data_model.g.dart";

@freezed
abstract class CustomerTransactionDataModel with _$CustomerTransactionDataModel {
  const factory CustomerTransactionDataModel({
    required double transactionAmount,
    required DateTime transactionDate,
    required TransactionDirection transactionDirection,
    required TransactionNarration transactionNarration,
  }) = _CustomerTransactionDataModel;

  factory CustomerTransactionDataModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerTransactionDataModelFromJson(json);
}
