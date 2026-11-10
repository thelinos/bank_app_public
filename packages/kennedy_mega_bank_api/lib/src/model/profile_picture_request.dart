import "package:freezed_annotation/freezed_annotation.dart";

part "profile_picture_request.freezed.dart";
part "profile_picture_request.g.dart";

@freezed
abstract class ProfilePictureRequest with _$ProfilePictureRequest {
  /// Returns a new [ProfilePictureRequest] instance.
  const factory ProfilePictureRequest({
    @JsonKey(name: "profilePicture", required: true, includeIfNull: false)
    required String profilePicture,
  }) = _ProfilePictureRequest;

  factory ProfilePictureRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfilePictureRequestFromJson(json);
}
