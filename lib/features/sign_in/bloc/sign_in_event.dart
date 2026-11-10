part of "sign_in_bloc.dart";

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.authSubscriptionRequested() =
      _AuthSubscriptionRequested;
  const factory SignInEvent.emailChanged({required String value}) =
      _EmailChanged;
  const factory SignInEvent.passwordChanged({required String value}) =
      _PasswordChanged;
  const factory SignInEvent.formSubmitted() =
      _FormSubmitted;
}
