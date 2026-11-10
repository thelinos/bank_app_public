import "dart:async";

import "package:bank_app/features/authentication/models/user.dart";
import "package:bank_app/features/authentication/repository/authentication_repository.dart";
import "package:bank_app/features/customer_partial_personal_info/repository/customer_partial_personal_info_repository.dart";
import "package:bank_app/shared/common/model/customer/customer_model.dart";
import "package:bank_app/shared/common/model/customer_static_data/customer_static_data_model.dart";
import "package:bank_app/shared/common/model/customer_transaction_data/customer_transaction_data_model.dart"
    show CustomerTransactionDataModel;
import "package:bank_app/shared/core/bank_logger/bank_logger.dart";
import "package:bank_app/shared/core/enums/gender.dart";
import "package:bank_app/shared/core/enums/title.dart";
import "package:bloc/bloc.dart";
import "package:bloc_concurrency/bloc_concurrency.dart";
import "package:fast_immutable_collections/fast_immutable_collections.dart"
    show IList;
import "package:formz/formz.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "customer_partial_personal_info_bloc.freezed.dart";
part "customer_partial_personal_info_event.dart";
part "customer_partial_personal_info_state.dart";

class CustomerPartialPersonalInfoBloc
    extends
        Bloc<
          CustomerPartialPersonalInfoEvent,
          CustomerPartialPersonalInfoState
        > {
  CustomerPartialPersonalInfoBloc({
    required AuthenticationRepository authenticationRepository,
    required CustomerPartialPersonalInfoRepository
    partialPersonalInfoRepository,
  }) : _authenticationRepository = authenticationRepository,
       _partialPersonalInfoRepository = partialPersonalInfoRepository,
       super(const _CustomerPartialPersonalInfoState()) {
    on<_AuthSubscriptionRequested>(
      _onAuthSubscriptionRequested,
      transformer: restartable(),
    );
    on<_GetCustomersFirstName>(
      _onGettingCustomersFirstName,
      transformer: sequential(),
    );
    on<_GetCustomersLastName>(
      _onGettingCustomersLastName,
      transformer: sequential(),
    );
    on<_GetCustomersGender>(
      _onGettingCustomersGender,
      transformer: restartable(),
    );
    on<_GetCustomersTitle>(
      _onGettingCustomersTitle,
      transformer: restartable(),
    );
    on<_SubmitCustomerDetail>(
      _onSubmittingCustomerDetail,
      transformer: restartable(),
    );
    on<_ResetState>(_onResettingState, transformer: droppable());
  }

  final AuthenticationRepository _authenticationRepository;
  final CustomerPartialPersonalInfoRepository _partialPersonalInfoRepository;

  FutureOr<void> _onAuthSubscriptionRequested(
    _AuthSubscriptionRequested event,
    Emitter<CustomerPartialPersonalInfoState> emit,
  ) async {
    await emit.forEach(
      _authenticationRepository.onUserChanges,
      onData: (user) {
        if (user == null) {
          return state.copyWith(user: null);
        }
        return state.copyWith(user: user);
      },
      onError: (error, stackTrace) {
        BankLogger.fatal(
          "_AuthSubscriptionRequested Error",
          error: error,
          stackTrace: stackTrace,
        );

        return state.copyWith(errorMessage: error.toString());
      },
    );
  }

  FutureOr<void> _onGettingCustomersFirstName(
    _GetCustomersFirstName event,
    Emitter<CustomerPartialPersonalInfoState> emit,
  ) async {
    final firstName = event.value;
    emit(state.copyWith(firstName: firstName));
  }

  FutureOr<void> _onGettingCustomersLastName(
    _GetCustomersLastName event,
    Emitter<CustomerPartialPersonalInfoState> emit,
  ) async {
    final lastName = event.value;
    emit(state.copyWith(lastName: lastName));
  }

  FutureOr<void> _onGettingCustomersGender(
    _GetCustomersGender event,
    Emitter<CustomerPartialPersonalInfoState> emit,
  ) async {
    final gender = event.gender;
    emit(state.copyWith(gender: gender));
  }

  FutureOr<void> _onGettingCustomersTitle(
    _GetCustomersTitle event,
    Emitter<CustomerPartialPersonalInfoState> emit,
  ) async {
    final gender = event.title;
    emit(state.copyWith(bankTitle: gender));
  }

  FutureOr<void> _onSubmittingCustomerDetail(
    _SubmitCustomerDetail event,
    Emitter<CustomerPartialPersonalInfoState> emit,
  ) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    final result = await _partialPersonalInfoRepository.setCustomerPartialInfo(
      state.user!.uid,
      CustomerModel(
        customerStaticData: CustomerStaticDataModel(
          customerName: "${state.firstName!} ${state.lastName!}",
          gender: state.gender,
          title: state.bankTitle.titleRecord.remoteValue,
        ),
        customerTransactionData: IList<CustomerTransactionDataModel>(const []),
      ),
    );

    result.when(
      (success) {
        emit(state.copyWith(status: FormzSubmissionStatus.success));
      },
      (error) {
        emit(state.copyWith(errorMessage: error));
      },
    );

    // add(const _ResetState());
  }

  FutureOr<void> _onResettingState(
    _ResetState event,
    Emitter<CustomerPartialPersonalInfoState> emit,
  ) async {
    emit(
      state.copyWith(
        lastName: null,
        status: FormzSubmissionStatus.initial,
        user: null,
        firstName: null,
        errorMessage: null,
      ),
    );
  }

  @override
  void onTransition(
    Transition<
      CustomerPartialPersonalInfoEvent,
      CustomerPartialPersonalInfoState
    >
    transition,
  ) {
    super.onTransition(transition);
    BankLogger.trace("CustomerPartialPersonalInfoBloc $transition");
  }
}
