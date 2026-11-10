import "dart:async";

import "package:bank_app/shared/common/model/customer/customer_model.dart";
import "package:bank_app/shared/core/bank_logger/bank_logger.dart";
import "package:bank_app/shared/core/storage/local_storage_service.dart";
import "package:bank_app/shared/core/storage/mock_image_storage_service.dart";
import "package:image_picker/image_picker.dart";
import "package:multiple_result/multiple_result.dart";

class CustomerFullPersonalInfoRepository {
  new();

  FutureOr<Result<String, String>> saveUserImage({
    required String userID,
    required XFile image,
  }) async {
    try {
      final result = await MockImageStorageService.saveUserImage(
        userID: userID,
        image: image,
      );
      return result;
    } on Error<dynamic, dynamic> catch (error, stackTrace) {
      BankLogger.error(
        "Error saving user image",
        error: error,
        stackTrace: stackTrace,
      );
      return Result.error(error.toString());
    }
  }

  FutureOr<Result<void, String>> updateCustomerImage({
    required String userID,
    CustomerModel? customer,
  }) async {
    try {
      BankLogger.info("Submitting customer image url ...");

      final result = await LocalStorageService.updateCustomerImage(
        userId: userID,
        // imageUrl: customer.customerStaticData?.imageUrl ?? '',
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
