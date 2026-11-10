import "package:freezed_annotation/freezed_annotation.dart";

part "name_request.freezed.dart";
part "name_request.g.dart";

@freezed
abstract class NameRequest with _$NameRequest {
  /// Returns a new [NameRequest] instance.
  const factory NameRequest({
    @JsonKey(name: "firstName", required: true, includeIfNull: false)
    required String firstName,
    @JsonKey(name: "surname", required: true, includeIfNull: false)
    required String surname,
    @JsonKey(name: "middleName", required: false, includeIfNull: false)
    String? middleName,
  }) = _NameRequest;

  factory NameRequest.fromJson(Map<String, dynamic> json) =>
      _$NameRequestFromJson(json);
}
