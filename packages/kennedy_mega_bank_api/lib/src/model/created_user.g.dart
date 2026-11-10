// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'created_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatedUser _$CreatedUserFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_CreatedUser', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['message', 'status', 'id', 'emailVerified'],
      );
      final val = _CreatedUser(
        message: $checkedConvert('message', (v) => v as String),
        status: $checkedConvert('status', (v) => (v as num).toInt()),
        id: $checkedConvert('id', (v) => v as String),
        emailVerified: $checkedConvert('emailVerified', (v) => v as bool),
        email: $checkedConvert('email', (v) => v as String?),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        updatedAt: $checkedConvert(
          'updatedAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CreatedUserToJson(_CreatedUser instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'id': instance.id,
      'emailVerified': instance.emailVerified,
      'email': ?instance.email,
      'createdAt': ?instance.createdAt?.toIso8601String(),
      'updatedAt': ?instance.updatedAt?.toIso8601String(),
    };
