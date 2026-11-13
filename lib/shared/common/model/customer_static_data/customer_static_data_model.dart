import "package:bank_app/shared/core/enums/gender.dart";
import "package:fast_immutable_collections/fast_immutable_collections.dart"
    show FicIterableExtension, FicListExtension, IMap;
import "package:freezed_annotation/freezed_annotation.dart";

part "customer_static_data_model.freezed.dart";
part "customer_static_data_model.g.dart";

@freezed
abstract class CustomerStaticDataModel with _$CustomerStaticDataModel {
  const factory({
    required String customerName,
    required Gender gender,
    required String title,
    String? imageUrl,
  }) = _CustomerStaticDataModel;

  factory fromJson(Map<String, dynamic> json) =>
      _$CustomerStaticDataModelFromJson(json);
}

extension CustomerStaticDataX on CustomerStaticDataModel {
  bool get imageUrlIsNotNull => imageUrl != null;

  bool get imageURLIsNotEmpty {
    final imageURL = imageUrl;
    if (imageURL == null) {
      return false;
    } else {
      return imageURL.isNotEmpty;
    }
  }

  bool get customerNameIsNotEmpty {
    final customer = customerName;
    return customer.isNotEmpty;
  }

  bool get customerNameIsEmpty {
    return customerName.isEmpty;
  }

  IMap<CustomerNameDivision, String> get _separatedCustomerName {
    final separatedCustomerNames = customerName.split(" ").lock;
    return IMap.fromIterable(
      separatedCustomerNames,
      keyMapper: (item) {
        if (separatedCustomerNames.isFirst(item)) return .firstName;

        return .lastName;
      },
      valueMapper: (item) => item,
    );
  }

  String get firstName => _separatedCustomerName.get(.firstName) ?? "";

  String get lastName => _separatedCustomerName.get(.lastName) ?? "";
}

enum CustomerNameDivision { firstName, lastName }
