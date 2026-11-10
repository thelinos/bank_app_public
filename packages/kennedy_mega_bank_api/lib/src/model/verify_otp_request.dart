import "package:freezed_annotation/freezed_annotation.dart";

part "verify_otp_request.freezed.dart";
part "verify_otp_request.g.dart";

@freezed
abstract class VerifyOtpRequest with _$VerifyOtpRequest {
  /// Returns a new [VerifyOtpRequest] instance.
  const factory VerifyOtpRequest({
    @JsonKey(name: "phoneNumber", required: true, includeIfNull: false)
    required String phoneNumber,
    @JsonKey(name: "otp", required: true, includeIfNull: false)
    required String otp,
  }) = _VerifyOtpRequest;

  factory VerifyOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpRequestFromJson(json);
}
