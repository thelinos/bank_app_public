part of "sign_up_bloc.dart";

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.authSubscriptionRequested() =
      _AuthSubscriptionRequested;
  const factory SignUpEvent.onEmailChanged({
    required String value,
  }) = _EmailChanged;


  const factory SignUpEvent.onPasswordChanged({
    required String value,
  }) = _PasswordChanged;


  const factory SignUpEvent.onReEnteringPassword({
    required String value,
  }) = _ReEnterPassword;

  const factory SignUpEvent.onFormsSubmitted() = _FormSubmitted;

}
