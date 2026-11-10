import "package:freezed_annotation/freezed_annotation.dart";

part "send_otp_request.freezed.dart";
part "send_otp_request.g.dart";

@freezed
abstract class SendOtpRequest with _$SendOtpRequest {
  /// Returns a new [SendOtpRequest] instance.
  const factory SendOtpRequest({
    @JsonKey(name: "phoneNumber", required: true, includeIfNull: false)
    required String phoneNumber,
  }) = _SendOtpRequest;

  factory SendOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$SendOtpRequestFromJson(json);
}
