// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyOtpRequest _$VerifyOtpRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_VerifyOtpRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['phoneNumber', 'otp']);
      final val = _VerifyOtpRequest(
        phoneNumber: $checkedConvert('phoneNumber', (v) => v as String),
        otp: $checkedConvert('otp', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$VerifyOtpRequestToJson(_VerifyOtpRequest instance) =>
    <String, dynamic>{'phoneNumber': instance.phoneNumber, 'otp': instance.otp};
