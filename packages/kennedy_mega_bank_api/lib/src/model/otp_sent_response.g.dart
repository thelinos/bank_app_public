// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_sent_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OtpSentResponse _$OtpSentResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_OtpSentResponse', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['message', 'status']);
      final val = _OtpSentResponse(
        message: $checkedConvert('message', (v) => v as String),
        status: $checkedConvert('status', (v) => (v as num).toInt()),
        expiresIn: $checkedConvert('expiresIn', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$OtpSentResponseToJson(_OtpSentResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'expiresIn': ?instance.expiresIn,
    };
