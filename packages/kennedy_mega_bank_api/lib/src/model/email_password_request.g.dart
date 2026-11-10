// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmailPasswordRequest _$EmailPasswordRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_EmailPasswordRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['email', 'password']);
  final val = _EmailPasswordRequest(
    email: $checkedConvert('email', (v) => v as String),
    password: $checkedConvert('password', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$EmailPasswordRequestToJson(
  _EmailPasswordRequest instance,
) => <String, dynamic>{'email': instance.email, 'password': instance.password};
