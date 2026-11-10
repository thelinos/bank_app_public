part of "sign_in_bloc.dart";

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState({
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default("") String email,
    @Default("") String password,
    String? errorMessage,
    User? user,
  }) = _SignInState;
  
}
