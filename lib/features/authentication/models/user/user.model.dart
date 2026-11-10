import "package:bank_app/features/authentication/models/status_user/status_user.model.dart"
    show StatusUser;
import "package:freezed_annotation/freezed_annotation.dart" show freezed;

part "user.model.freezed.dart";

@freezed
sealed class UserModel with _$UserModel {
  const factory UserModel({
    required StatusUser status,
    required String id,
    required String email,
    required bool emailVerified,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserModel;
}
