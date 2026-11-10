part of "authentication_bloc.dart";

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.authSubscriptionRequested() =
      _AuthSubscriptionRequested;

  const factory AuthenticationEvent.logoutRequested() = _LogoutRequested;

  const factory AuthenticationEvent.userReloaded() = _UserReloaded;

  const factory AuthenticationEvent.accountDeletionRequested() =
      _AccountDeletionRequested;

  const factory AuthenticationEvent.signUp() = _SignUp;

  const factory AuthenticationEvent.logIn() = _LogIn;

  const factory AuthenticationEvent.forgotPassword() = _ForgotPassword;

  const factory AuthenticationEvent.uploadCustomerPic() = _UploadCustomerPic;

}
