import "dart:async";

import "package:bank_app/features/authentication/models/user.dart";
import "package:bank_app/features/authentication/repository/authentication_repository.dart";
import "package:bank_app/shared/core/bank_logger/bank_logger.dart";
import "package:bloc/bloc.dart";
import "package:bloc_concurrency/bloc_concurrency.dart";
import "package:formz/formz.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "authentication_bloc.freezed.dart";
part "authentication_event.dart";
part "authentication_state.dart";

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required AuthenticationRepository authenticationRepository,
  }) : _authenticationRepository = authenticationRepository,
       super(const Unknown()) {
    on<_AuthSubscriptionRequested>(
      _onAuthSubscriptionRequested,
      transformer: droppable(),
    );
    on<_LogoutRequested>(_onLogoutRequested, transformer: droppable());
    on<_AccountDeletionRequested>(
      _onAccountDeletionRequested,
      transformer: droppable(),
    );
    on<_UserReloaded>(_onReloadingUser, transformer: droppable());
  }

  final AuthenticationRepository _authenticationRepository;

  FutureOr<void> _onReloadingUser(
    _UserReloaded event,
    Emitter<AuthenticationState> emit,
  ) async {}

  FutureOr<void> _onAuthSubscriptionRequested(
    _AuthSubscriptionRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    await emit.forEach(
      _authenticationRepository.onUserChanges,
      onData: (User? user) {
        if (user == null) {
          return const AuthenticationState.unauthenticated();
        }
        return AuthenticationState.authenticated(user: user);
      },
      onError: (error, stackTrace) {
        BankLogger.fatal(
          "_AuthSubscriptionRequested Error",
          error: error,
          stackTrace: stackTrace,
        );

        return const AuthenticationState.unknown();
      },
    );
  }

  FutureOr<void> _onLogoutRequested(
    _LogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    await _authenticationRepository.signOut();
  }

  FutureOr<void> _onAccountDeletionRequested(
    _AccountDeletionRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    final authState = state;

    if (authState is Authenticated) {
      emit(authState.copyWith(status: FormzSubmissionStatus.inProgress));

      final result = await _authenticationRepository.deleteAccount(
        user: authState.user,
      );

      result.when<void>(
        (success) {
          emit(const UnAuthenticated(status: FormzSubmissionStatus.success));
        },
        (error) {
          emit(
            authState.copyWith(
              error: error,
              status: FormzSubmissionStatus.failure,
            ),
          );
        },
      );

      return;
    }

    emit(
      const UnAuthenticated(
        status: FormzSubmissionStatus.failure,
        error: "You are not logged in",
      ),
    );
  }

  @override
  void onTransition(
    Transition<AuthenticationEvent, AuthenticationState> transition,
  ) {
    super.onTransition(transition);
    BankLogger.trace("AuthenticationBloc $transition");
  }
}
