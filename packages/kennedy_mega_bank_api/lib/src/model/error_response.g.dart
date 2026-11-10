// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_ErrorResponse', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['message', 'status']);
      final val = _ErrorResponse(
        message: $checkedConvert('message', (v) => v as String),
        status: $checkedConvert('status', (v) => v),
      );
      return val;
    });

Map<String, dynamic> _$ErrorResponseToJson(_ErrorResponse instance) =>
    <String, dynamic>{'message': instance.message, 'status': instance.status};
