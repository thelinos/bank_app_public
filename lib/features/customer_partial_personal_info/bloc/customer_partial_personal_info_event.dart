part of "customer_partial_personal_info_bloc.dart";

@freezed
class CustomerPartialPersonalInfoEvent with _$CustomerPartialPersonalInfoEvent {
  const factory CustomerPartialPersonalInfoEvent.authSubscriptionRequested() =
      _AuthSubscriptionRequested;
  const factory CustomerPartialPersonalInfoEvent.resetState() =
      _ResetState;

  const factory CustomerPartialPersonalInfoEvent.getCustomersFirstName({
    required String value,
  }) = _GetCustomersFirstName;

  const factory CustomerPartialPersonalInfoEvent.getCustomersLastName({
    required String value,
  }) = _GetCustomersLastName;

  const factory CustomerPartialPersonalInfoEvent.getCustomersGender({
    required Gender gender,
  }) = _GetCustomersGender;

  const factory CustomerPartialPersonalInfoEvent.getCustomersTitle({
    required BankTitle title,
  }) = _GetCustomersTitle;

  const factory CustomerPartialPersonalInfoEvent.submitCustomerDetail() =
      _SubmitCustomerDetail;
}
