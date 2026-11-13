part of "authentication_bloc.dart";

@freezed
sealed class AuthenticationState with _$AuthenticationState {
  const factory authenticated({
    required User user,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    String? error,
  }) = Authenticated;

  const factory unauthenticated({
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    String? error,
  }) = UnAuthenticated;

  const factory unknown() = Unknown;
}
