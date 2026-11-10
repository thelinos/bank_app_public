// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageResponse _$MessageResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_MessageResponse', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['message', 'status']);
      final val = _MessageResponse(
        message: $checkedConvert('message', (v) => v as String),
        status: $checkedConvert('status', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$MessageResponseToJson(_MessageResponse instance) =>
    <String, dynamic>{'message': instance.message, 'status': instance.status};
