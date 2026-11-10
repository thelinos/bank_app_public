import "dart:async";

import "package:bank_app/features/authentication/models/user.dart";
import "package:bank_app/features/authentication/repository/authentication_repository.dart";
import "package:bank_app/shared/core/bank_logger/bank_logger.dart";
import "package:multiple_result/multiple_result.dart";

class SignUpRepository {
  SignUpRepository({required AuthenticationRepository authenticationRepository})
    : _authenticationRepository = authenticationRepository;

  final AuthenticationRepository _authenticationRepository;

  FutureOr<Result<User?, String>> signUp({
    required String email,
    required String password,
  }) async {
    try {
      // Mock sign-up - create a user with the email as UID
      // In a real app, you would validate credentials and create the user here
      if (email.isEmpty || password.isEmpty) {
        return const Result.error("Email and password are required");
      }

      if (password.length < 6) {
        return const Result.error("Password should be at least 6 characters");
      }

      // Mock user creation
      final user = User(
        uid: email.hashCode.toString(),
        email: email,
        displayName: email.split('@')[0],
      );

      _authenticationRepository.setCurrentUser(user);
      BankLogger.info("User signed up: ${user.uid}");
      return Result.success(user);
    } catch (error, stackTrace) {
      BankLogger.error(
        "Error in sign up",
        error: error,
        stackTrace: stackTrace,
      );
      return Result.error(error.toString());
    }
  }
}
