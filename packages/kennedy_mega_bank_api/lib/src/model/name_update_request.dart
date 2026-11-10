import "package:freezed_annotation/freezed_annotation.dart";

part "name_update_request.freezed.dart";
part "name_update_request.g.dart";

@freezed
abstract class NameUpdateRequest with _$NameUpdateRequest {
  /// Returns a new [NameUpdateRequest] instance.
  const factory NameUpdateRequest({
    @JsonKey(name: "firstName", required: false, includeIfNull: false)
    String? firstName,
    @JsonKey(name: "middleName", required: false, includeIfNull: false)
    String? middleName,
    @JsonKey(name: "surname", required: false, includeIfNull: false)
    String? surname,
  }) = _NameUpdateRequest;

  factory NameUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$NameUpdateRequestFromJson(json);
}
