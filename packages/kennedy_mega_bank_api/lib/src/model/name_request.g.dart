// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NameRequest _$NameRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_NameRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['firstName', 'surname']);
      final val = _NameRequest(
        firstName: $checkedConvert('firstName', (v) => v as String),
        surname: $checkedConvert('surname', (v) => v as String),
        middleName: $checkedConvert('middleName', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$NameRequestToJson(_NameRequest instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'surname': instance.surname,
      'middleName': ?instance.middleName,
    };
