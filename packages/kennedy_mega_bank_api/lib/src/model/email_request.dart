import "package:freezed_annotation/freezed_annotation.dart";

part "email_request.freezed.dart";
part "email_request.g.dart";

@freezed
abstract class EmailRequest with _$EmailRequest {
  /// Returns a new [EmailRequest] instance.
  const factory EmailRequest({
    @JsonKey(name: "email", required: true, includeIfNull: false)
    required String email,
  }) = _EmailRequest;

  factory EmailRequest.fromJson(Map<String, dynamic> json) =>
      _$EmailRequestFromJson(json);
}
