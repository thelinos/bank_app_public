part of "sign_up_bloc.dart";

@freezed
abstract class SignUpState with _$SignUpState {
  const factory({
    @Default(Email.pure()) @EmailConverter() Email email,
    @Default(Password.pure())
    Password password, String? errorMessage,
    String? reEnteringPasswordError, User? user,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus status,
  }) = _SignUpState;
}
