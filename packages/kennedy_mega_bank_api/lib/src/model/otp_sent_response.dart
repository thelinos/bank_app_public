import "package:freezed_annotation/freezed_annotation.dart";

part "otp_sent_response.freezed.dart";
part "otp_sent_response.g.dart";

@freezed
abstract class OtpSentResponse with _$OtpSentResponse {
  /// Returns a new [OtpSentResponse] instance.
  const factory OtpSentResponse({
    @JsonKey(name: "message", required: true, includeIfNull: false)
    required String message,
    @JsonKey(name: "status", required: true, includeIfNull: false)
    required int status,
    @JsonKey(name: "expiresIn", required: false, includeIfNull: false)
    int? expiresIn,
  }) = _OtpSentResponse;

  factory OtpSentResponse.fromJson(Map<String, dynamic> json) =>
      _$OtpSentResponseFromJson(json);
}
