import "package:bank_app/shared/common/model/customer_static_data/customer_static_data_model.dart";
import "package:bank_app/shared/common/model/customer_transaction_data/customer_transaction_data_model.dart";
import "package:fast_immutable_collections/fast_immutable_collections.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "customer_model.freezed.dart";
part "customer_model.g.dart";

@freezed
abstract class CustomerModel with _$CustomerModel {
  const factory({
    required CustomerStaticDataModel customerStaticData,
    required IList<CustomerTransactionDataModel> customerTransactionData,
  }) = _CustomerModel;

  factory fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);
}

extension CustomerModelX on CustomerModel {
  bool get transactionListIsEmpty {
    return customerTransactionData.isEmpty;
  }
}
