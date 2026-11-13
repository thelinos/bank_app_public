import "dart:async";

import "package:bank_app/features/authentication/models/user.dart";
import "package:bank_app/features/authentication/repository/authentication_repository.dart";
import "package:bank_app/features/sign_up_flow/sign_up/repository/sign_up_repository.dart";
import "package:bank_app/shared/core/bank_logger/bank_logger.dart";
import "package:bank_app/shared/core/forms_inputs/email.dart";
import "package:bank_app/shared/core/forms_inputs/password.dart";
import "package:bloc/bloc.dart";
import "package:bloc_concurrency/bloc_concurrency.dart";
import "package:formz/formz.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "sign_up_bloc.freezed.dart";
part "sign_up_event.dart";
part "sign_up_state.dart";

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  new({
    required this._authenticationRepository,
    required this._signUpRepository,
  }) : super(const _SignUpState()) {
    on<_AuthSubscriptionRequested>(
      _onSubscribingToUserAuthentication,
      transformer: restartable(),
    );
    on<_EmailChanged>(_onEmailChanged, transformer: sequential());
    on<_PasswordChanged>(_onPasswordChanged, transformer: sequential());
    on<_ReEnterPassword>(_onReEnteringPassword, transformer: sequential());
    on<_FormSubmitted>(_onSubmittingForm, transformer: restartable());
  }

  final AuthenticationRepository _authenticationRepository;
  final SignUpRepository _signUpRepository;

  FutureOr<void> _onEmailChanged(
    _EmailChanged event,
    Emitter<SignUpState> emit,
  ) async {
    final email = Email.dirty(value: event.value);

    emit(state.copyWith(email: email));
  }

  FutureOr<void> _onPasswordChanged(
    _PasswordChanged event,
    Emitter<SignUpState> emit,
  ) async {
    final password = Password.dirty(value: event.value);

    emit(state.copyWith(password: password));
  }

  FutureOr<void> _onReEnteringPassword(
    _ReEnterPassword event,
    Emitter<SignUpState> emit,
  ) async {
    if (event.value.isEmpty) {
      emit(
        state.copyWith(
          reEnteringPasswordError: MatchingPasswords.theyMatch.message,
        ),
      );
    } else if (state.password.value == event.value || event.value.isEmpty) {
      final password = Password.dirty(value: event.value);

      emit(
        state.copyWith(
          password: password,
          reEnteringPasswordError: MatchingPasswords.theyMatch.message,
        ),
      );
    } else if (state.password.value != event.value) {
      emit(
        state.copyWith(
          reEnteringPasswordError:
              MatchingPasswords.bothPasswordMustMatch.message,
        ),
      );
    }
  }

  FutureOr<void> _onSubmittingForm(
    _FormSubmitted event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    final email = state.email.value;
    final password = state.password.value;

    final result = await _signUpRepository.signUp(
      email: email,
      password: password,
    );

    result.when(
      (success) {
        emit(
          state.copyWith(status: FormzSubmissionStatus.success, user: success),
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
    Emitter<SignUpState> emit,
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
  void onTransition(Transition<SignUpEvent, SignUpState> transition) {
    super.onTransition(transition);
    BankLogger.trace("SIgnUpBloc $transition");
  }
}

enum MatchingPasswords {
  bothPasswordMustMatch("Both passwords must match"),
  theyMatch(null);

  new(this.message);

  final String? message;
}
