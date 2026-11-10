part of "customer_full_personal_info_bloc.dart";

@freezed
abstract class CustomerFullPersonalInfoState with _$CustomerFullPersonalInfoState {
  const factory CustomerFullPersonalInfoState({
    String? picErrorMessage,
    String? errorMessage,
    User? user,
    CroppedFile? customerPic,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
  }) = _CustomerFullPersonalInfoState;
}
