import "package:freezed_annotation/freezed_annotation.dart";

part "reset_password_request.freezed.dart";
part "reset_password_request.g.dart";

@freezed
abstract class ResetPasswordRequest with _$ResetPasswordRequest {
  /// Returns a new [ResetPasswordRequest] instance.
  const factory ResetPasswordRequest({
    @JsonKey(name: "token", required: true, includeIfNull: false)
    required String token,
    @JsonKey(name: "newPassword", required: true, includeIfNull: false)
    required String newPassword,
  }) = _ResetPasswordRequest;

  factory ResetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestFromJson(json);
}
