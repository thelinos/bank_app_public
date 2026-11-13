part of "customer_partial_personal_info_bloc.dart";

@freezed
class CustomerPartialPersonalInfoEvent with _$CustomerPartialPersonalInfoEvent {
  const factory authSubscriptionRequested() =
      _AuthSubscriptionRequested;
  const factory resetState() =
      _ResetState;

  const factory getCustomersFirstName({
    required String value,
  }) = _GetCustomersFirstName;

  const factory getCustomersLastName({
    required String value,
  }) = _GetCustomersLastName;

  const factory getCustomersGender({
    required Gender gender,
  }) = _GetCustomersGender;

  const factory getCustomersTitle({
    required BankTitle title,
  }) = _GetCustomersTitle;

  const factory submitCustomerDetail() =
      _SubmitCustomerDetail;
}
