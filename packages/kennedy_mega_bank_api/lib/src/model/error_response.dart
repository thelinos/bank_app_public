import "package:freezed_annotation/freezed_annotation.dart";

part "error_response.freezed.dart";
part "error_response.g.dart";

@freezed
abstract class ErrorResponse with _$ErrorResponse {
  /// Returns a new [ErrorResponse] instance.
  const factory ErrorResponse({
    @JsonKey(name: "message", required: true, includeIfNull: false)
    required String message,
    @JsonKey(name: "status", required: true, includeIfNull: true)
    required Object? status,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}
