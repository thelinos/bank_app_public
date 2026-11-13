import "dart:async";
import "package:bank_app/shared/common/model/customer/customer_model.dart";
import "package:bank_app/shared/core/bank_logger/bank_logger.dart";
import "package:multiple_result/multiple_result.dart";

class LocalStorageService {
  new _();

  static final Map<String, CustomerModel> _customerData = {};
  static final StreamController<CustomerModel?> _customerStreamController =
      StreamController<CustomerModel?>.broadcast();

  static Future<void> init() async {
    BankLogger.info("LocalStorageService initialized successfully");
  }

  static Future<Result<void, String>> saveCustomerData({
    required String userId,
    required CustomerModel customer,
  }) async {
    try {
      _customerData[userId] = customer;
      _customerStreamController.add(customer);
      BankLogger.info("Customer data saved for user: $userId");
      return const Result.success(null);
    } catch (e, stackTrace) {
      BankLogger.error(
        "Error saving customer data",
        error: e,
        stackTrace: stackTrace,
      );
      return Result.error(e.toString());
    }
  }

  static Future<Result<CustomerModel?, String>> getCustomerData({
    required String userId,
  }) async {
    try {
      final customer = _customerData[userId];
      return Result.success(customer);
    } catch (e, stackTrace) {
      BankLogger.error(
        "Error getting customer data",
        error: e,
        stackTrace: stackTrace,
      );
      return Result.error(e.toString());
    }
  }

  static Stream<CustomerModel?> customerDataStream(String userId) {
    return _customerStreamController.stream;
  }

  static Future<Result<void, String>> updateCustomerImage({
    required String userId,
    String? imageUrl,
  }) async {
    try {
      final customer = _customerData[userId];
      if (customer != null) {
        final updatedCustomer = customer.copyWith(
          // customerStaticData: customer.customerStaticData?.copyWith(
          //   imageUrl: imageUrl,
          // ),
        );
        _customerData[userId] = updatedCustomer;
        _customerStreamController.add(updatedCustomer);
        BankLogger.info("Customer image updated for user: $userId");
        return const Result.success(null);
      } else {
        return const Result.error("Customer not found");
      }
    } catch (e, stackTrace) {
      BankLogger.error(
        "Error updating customer image",
        error: e,
        stackTrace: stackTrace,
      );
      return Result.error(e.toString());
    }
  }

  static Future<Result<void, String>> deleteCustomerData({
    required String userId,
  }) async {
    try {
      _customerData.remove(userId);
      _customerStreamController.add(null);
      BankLogger.info("Customer data deleted for user: $userId");
      return const Result.success(null);
    } catch (e, stackTrace) {
      BankLogger.error(
        "Error deleting customer data",
        error: e,
        stackTrace: stackTrace,
      );
      return Result.error(e.toString());
    }
  }

  static Future<void> close() async {
    await _customerStreamController.close();
  }
}
