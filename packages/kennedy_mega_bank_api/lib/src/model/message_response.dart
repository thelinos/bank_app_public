import "package:freezed_annotation/freezed_annotation.dart";

part "message_response.freezed.dart";
part "message_response.g.dart";

@freezed
abstract class MessageResponse with _$MessageResponse {
  /// Returns a new [MessageResponse] instance.
  const factory MessageResponse({
    @JsonKey(name: "message", required: true, includeIfNull: false)
    required String message,
    @JsonKey(name: "status", required: true, includeIfNull: false)
    required int status,
  }) = _MessageResponse;

  factory MessageResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageResponseFromJson(json);
}
