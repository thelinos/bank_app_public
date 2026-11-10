import "dart:async";

import "package:bank_app/shared/common/model/customer/customer_model.dart";
import "package:bank_app/shared/core/bank_logger/bank_logger.dart";
import "package:bank_app/shared/core/storage/local_storage_service.dart";
import "package:multiple_result/multiple_result.dart";

class CustomerPartialPersonalInfoRepository {
  new();

  FutureOr<Result<void, String>> setCustomerPartialInfo(
    String userID,
    CustomerModel customer,
  ) async {
    try {
      BankLogger.info("Submitting personal info data: $customer..");

      final result = await LocalStorageService.saveCustomerData(
        userId: userID,
        customer: customer,
      );

      BankLogger.trace("Successfully updated personal info data");

      return result;
    } on Error<dynamic, dynamic> catch (error, stackTrace) {
      BankLogger.error(
        "Error updating personal info document",
        error: error,
        stackTrace: stackTrace,
      );

      return Result.error(error.toString());
    }
  }
}
