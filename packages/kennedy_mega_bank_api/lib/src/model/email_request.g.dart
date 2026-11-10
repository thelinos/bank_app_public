// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmailRequest _$EmailRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_EmailRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['email']);
      final val = _EmailRequest(
        email: $checkedConvert('email', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$EmailRequestToJson(_EmailRequest instance) =>
    <String, dynamic>{'email': instance.email};
