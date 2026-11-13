import "dart:async";
import "package:bank_app/shared/core/bank_logger/bank_logger.dart";
import "package:image_picker/image_picker.dart";
import "package:multiple_result/multiple_result.dart";

class MockImageStorageService {
  new _();

  static final Map<String, String> _imageUrls = {};

  static Future<Result<String, String>> saveUserImage({
    required String userID,
    required XFile image,
  }) async {
    try {
      // Generate a mock URL for the image
      final mockUrl =
          "https://mock-storage.example.com/user-profile/$userID/${DateTime.now().millisecondsSinceEpoch}.jpg";
      _imageUrls[userID] = mockUrl;
      BankLogger.info("Mock image saved for user: $userID with URL: $mockUrl");
      return Result.success(mockUrl);
    } catch (e, stackTrace) {
      BankLogger.error(
        "Error saving mock image",
        error: e,
        stackTrace: stackTrace,
      );
      return Result.error(e.toString());
    }
  }

  static String? getImageUrl(String userID) {
    return _imageUrls[userID];
  }

  static Future<void> clear() async {
    _imageUrls.clear();
  }
}
