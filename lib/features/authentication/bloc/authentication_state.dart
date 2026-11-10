part of "authentication_bloc.dart";

@freezed
sealed class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.authenticated({
    required User user,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    String? error,
  }) = Authenticated;

  const factory AuthenticationState.unauthenticated({
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    String? error,
  }) = UnAuthenticated;

  const factory AuthenticationState.unknown() = Unknown;
}
