import "package:freezed_annotation/freezed_annotation.dart" show freezed;

part "status_user.model.freezed.dart";

@freezed
sealed class StatusUser with _$StatusUser {
  const factory({required String message, required int status}) =
      _StatusUser;
}
