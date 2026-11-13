import "dart:async";

import "package:bank_app/features/authentication/models/user.dart";
import "package:bank_app/features/authentication/repository/authentication_repository.dart";
import "package:bank_app/features/sign_in/repository/sign_in_repository.dart";
import "package:bank_app/shared/core/bank_logger/bank_logger.dart";
import "package:bloc/bloc.dart";
import "package:bloc_concurrency/bloc_concurrency.dart";
import "package:formz/formz.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "sign_in_bloc.freezed.dart";
part "sign_in_event.dart";
part "sign_in_state.dart";

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  new({
    required this._authenticationRepository,
    required this._signInRepository,
  }) : super(const _SignInState()) {
    on<_EmailChanged>(_onEmailChanged, transformer: sequential());
    on<_PasswordChanged>(_onPasswordChanged, transformer: sequential());
    on<_FormSubmitted>(_onSubmittingForms, transformer: restartable());
    on<_AuthSubscriptionRequested>(
      _onSubscribingToUserAuthentication,
      transformer: restartable(),
    );
  }

  final SignInRepository _signInRepository;

  final AuthenticationRepository _authenticationRepository;

  FutureOr<void> _onEmailChanged(
    _EmailChanged event,
    Emitter<SignInState> emit,
  ) async {
    final email = event.value;
    emit(state.copyWith(email: email));
  }

  FutureOr<void> _onPasswordChanged(
    _PasswordChanged event,
    Emitter<SignInState> emit,
  ) async {
    final password = event.value;
    emit(state.copyWith(password: password));
  }

  FutureOr<void> _onSubmittingForms(
    _FormSubmitted event,
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    final result = await _signInRepository.signUpResult(
      email: state.email,
      password: state.password,
    );

    result.when(
      (success) {
        emit(
          state.copyWith(status: FormzSubmissionStatus.success),
        );
      },
      (error) {
        emit(
          state.copyWith(
            status: FormzSubmissionStatus.failure,
            errorMessage: error,
          ),
        );
      },
    );
  }

  FutureOr<void> _onSubscribingToUserAuthentication(
    _AuthSubscriptionRequested event,
    Emitter<SignInState> emit,
  ) async {
    await emit.forEach(
      _authenticationRepository.onUserChanges,
      onData: (data) {
        if (data == null) {
          return state;
        }
        return state.copyWith(user: data);
      },
    );
  }

  @override
  void onTransition(Transition<SignInEvent, SignInState> transition) {
    super.onTransition(transition);
    BankLogger.trace("SignInBloc $transition");
  }
}
