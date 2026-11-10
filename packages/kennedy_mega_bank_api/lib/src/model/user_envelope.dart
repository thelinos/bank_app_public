import "package:freezed_annotation/freezed_annotation.dart";

part "user_envelope.freezed.dart";
part "user_envelope.g.dart";

@freezed
abstract class UserEnvelope with _$UserEnvelope {
  /// Returns a new [UserEnvelope] instance.
  const factory UserEnvelope({
    @JsonKey(name: "message", required: true, includeIfNull: false)
    required String message,
    @JsonKey(name: "status", required: true, includeIfNull: false)
    required int status,

    /// User profile; password is never returned.
    @JsonKey(name: "user", required: true, includeIfNull: false)
    required Object user,
  }) = _UserEnvelope;

  factory UserEnvelope.fromJson(Map<String, dynamic> json) =>
      _$UserEnvelopeFromJson(json);
}
