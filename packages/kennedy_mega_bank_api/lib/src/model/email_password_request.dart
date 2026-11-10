import "package:freezed_annotation/freezed_annotation.dart";

part "email_password_request.freezed.dart";
part "email_password_request.g.dart";

@freezed
abstract class EmailPasswordRequest with _$EmailPasswordRequest {
  /// Returns a new [EmailPasswordRequest] instance.
  const factory EmailPasswordRequest({
    @JsonKey(name: "email", required: true, includeIfNull: false)
    required String email,
    @JsonKey(name: "password", required: true, includeIfNull: false)
    required String password,
  }) = _EmailPasswordRequest;

  factory EmailPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$EmailPasswordRequestFromJson(json);
}
