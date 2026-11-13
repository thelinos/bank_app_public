part of "sign_in_bloc.dart";

@freezed
class SignInEvent with _$SignInEvent {
  const factory authSubscriptionRequested() =
      _AuthSubscriptionRequested;
  const factory emailChanged({required String value}) =
      _EmailChanged;
  const factory passwordChanged({required String value}) =
      _PasswordChanged;
  const factory formSubmitted() =
      _FormSubmitted;
}
