// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserEnvelope _$UserEnvelopeFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_UserEnvelope', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['message', 'status', 'user']);
      final val = _UserEnvelope(
        message: $checkedConvert('message', (v) => v as String),
        status: $checkedConvert('status', (v) => (v as num).toInt()),
        user: $checkedConvert('user', (v) => v as Object),
      );
      return val;
    });

Map<String, dynamic> _$UserEnvelopeToJson(_UserEnvelope instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'user': instance.user,
    };
