import "dart:async";

import "package:bank_app/features/authentication/models/user.dart";
import "package:bank_app/shared/core/bank_logger/bank_logger.dart";
import "package:multiple_result/multiple_result.dart";

class AuthenticationRepository {
  new();

  User? _currentUser;

  Future<Result<void, String>> deleteAccount({required User user}) async {
    try {
      if (_currentUser?.uid == user.uid) {
        _currentUser = null;
        _userController.add(null);
      }
      BankLogger.info("Account deleted for user: ${user.uid}");
      return const Result.success(null);
    } on Error<dynamic, dynamic> catch (error, stackTrace) {
      BankLogger.error(
        "Error deleting account",
        error: error,
        stackTrace: stackTrace,
      );
      return Result.error(error.toString());
    }
  }

  /// Signs out the current user.
  Future<void> signOut() async {
    try {
      _currentUser = null;
      _userController.add(null);
      BankLogger.info("User signed out");
    } catch (error, stackTrace) {
      BankLogger.error(
        "Error signing out",
        error: error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  Stream<User?> get onUserChanges => _userController.stream;

  final StreamController<User?> _userController =
      StreamController<User?>.broadcast();

  User? get currentUser => _currentUser;

  void setCurrentUser(User user) {
    _currentUser = user;
    _userController.add(user);
  }

  Future<void> dispose() async {
    await _userController.close();
  }
}
