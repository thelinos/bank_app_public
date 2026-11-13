part of "sign_up_bloc.dart";

@freezed
sealed class SignUpEvent with _$SignUpEvent {
  const factory authSubscriptionRequested() = _AuthSubscriptionRequested;
  const factory onEmailChanged({required String value}) = _EmailChanged;

  const factory onPasswordChanged({required String value}) = _PasswordChanged;

  const factory onReEnteringPassword({required String value}) =
      _ReEnterPassword;

  const factory onFormsSubmitted() = _FormSubmitted;
}
