part of "authentication_bloc.dart";

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory authSubscriptionRequested() =
      _AuthSubscriptionRequested;

  const factory logoutRequested() = _LogoutRequested;

  const factory userReloaded() = _UserReloaded;

  const factory accountDeletionRequested() =
      _AccountDeletionRequested;

  const factory signUp() = _SignUp;

  const factory logIn() = _LogIn;

  const factory forgotPassword() = _ForgotPassword;

  const factory uploadCustomerPic() = _UploadCustomerPic;

}
