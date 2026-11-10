import "package:bank_app/shared/core/bank_logger/bank_logger.dart"
    show BankLogger;
import "package:fpdart/fpdart.dart";
import "package:kennedy_mega_bank_api/kennedy_mega_bank_api.dart"
    show
        AuthenticationApi,
        CreatedUser,
        EmailPasswordRequest,
        KennedyMegaBankApi;

class SignInData({required final KennedyMegaBankApi _api}) {
  AuthenticationApi get _authApi {
    return _api.getAuthenticationApi();
  }

  TaskEither<Object, Option<CreatedUser>> signUpUserTask(
    String email,
    String password,
  ) {
    return TaskEither.tryCatch(
      () async {
        final createdUserRequest = EmailPasswordRequest(
          email: email,
          password: password,
        );

        final createdUserResponse = await _authApi.authenticationLoginPost(
          emailPasswordRequest: createdUserRequest,
        );

        return Option.fromNullable(createdUserResponse.data);
      },
      //TODO(thelinos): Add Dio package to the main app project to import key abstract classes for a DioException check
      (error, stackTrace) {
        BankLogger.error(
          error.toString(),
          stackTrace: stackTrace,
          time: DateTime.now(),
        );

        return error;
      },
    );
  }
}
