part of "customer_partial_personal_info_bloc.dart";

@freezed
abstract class CustomerPartialPersonalInfoState with _$CustomerPartialPersonalInfoState {
  const factory({
    String? firstName,
    String? lastName,
    String? errorMessage,
    @Default(Gender.male) Gender gender,
    @Default(BankTitle.mr) BankTitle bankTitle,
    User? user,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
  }) = _CustomerPartialPersonalInfoState;
}
