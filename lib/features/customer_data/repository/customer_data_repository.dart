import "package:bank_app/shared/common/model/customer/customer_model.dart";
import "package:bank_app/shared/core/storage/local_storage_service.dart";

class CustomerDataRepository {
  new();

  Stream<CustomerModel?> customerLiveData(String userID) {
    return LocalStorageService.customerDataStream(userID);
  }
}
