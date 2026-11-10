// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_picture_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfilePictureRequest _$ProfilePictureRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_ProfilePictureRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['profilePicture']);
  final val = _ProfilePictureRequest(
    profilePicture: $checkedConvert('profilePicture', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$ProfilePictureRequestToJson(
  _ProfilePictureRequest instance,
) => <String, dynamic>{'profilePicture': instance.profilePicture};
