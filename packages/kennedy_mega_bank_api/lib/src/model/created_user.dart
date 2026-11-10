import "package:freezed_annotation/freezed_annotation.dart";

part "created_user.freezed.dart";
part "created_user.g.dart";

@freezed
abstract class CreatedUser with _$CreatedUser {
  /// Returns a new [CreatedUser] instance.
  const factory CreatedUser({
    @JsonKey(name: "message", required: true, includeIfNull: false)
    required String message,
    @JsonKey(name: "status", required: true, includeIfNull: false)
    required int status,
    @JsonKey(name: "id", required: true, includeIfNull: false)
    required String id,
    @JsonKey(name: "emailVerified", required: true, includeIfNull: false)
    required bool emailVerified,
    @JsonKey(name: "email", required: false, includeIfNull: false)
    String? email,
    @JsonKey(name: "createdAt", required: false, includeIfNull: false)
    DateTime? createdAt,
    @JsonKey(name: "updatedAt", required: false, includeIfNull: false)
    DateTime? updatedAt,
  }) = _CreatedUser;

  factory CreatedUser.fromJson(Map<String, dynamic> json) =>
      _$CreatedUserFromJson(json);
}
