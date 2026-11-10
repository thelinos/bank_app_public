// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SendOtpRequest _$SendOtpRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_SendOtpRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['phoneNumber']);
      final val = _SendOtpRequest(
        phoneNumber: $checkedConvert('phoneNumber', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$SendOtpRequestToJson(_SendOtpRequest instance) =>
    <String, dynamic>{'phoneNumber': instance.phoneNumber};
