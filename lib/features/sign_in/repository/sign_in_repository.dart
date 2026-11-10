// import "package:bank_app/features/authentication/models/user.dart";
import "package:bank_app/features/authentication/models/status_user/status_user.model.dart"
    show StatusUser;
import "package:bank_app/features/authentication/models/user/user.model.dart"
    show UserModel;
import "package:bank_app/features/sign_in/data/sign_in_data.dart"
    show SignInData;
import "package:fpdart/fpdart.dart" show Option;
import "package:multiple_result/multiple_result.dart" show Result;

class const SignInRepository({required final SignInData _signInData}) {
  Future<Result<Option<UserModel>, String>> signUpResult({
    required String email,
    required String password,
  }) async {
    final signUpResult = await _signInData
        .signUpUserTask(email, password)
        .run();

    return signUpResult.fold<Result<Option<UserModel>, String>>(
      (error) {
        return Result.error(error.toString());
      },
      (createdUserOption) {
        return Result.success(
          createdUserOption.map(
            (createdUser) => UserModel(
              email: createdUser.email ?? "",
              emailVerified: createdUser.emailVerified,
              id: createdUser.id,
              status: StatusUser(
                message: createdUser.message,
                status: createdUser.status,
              ),
              createdAt: createdUser.createdAt,
              updatedAt: createdUser.updatedAt,
            ),
          ),
        );
      },
    );
  }
}
