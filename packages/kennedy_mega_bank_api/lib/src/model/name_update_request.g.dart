// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NameUpdateRequest _$NameUpdateRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_NameUpdateRequest', json, ($checkedConvert) {
      final val = _NameUpdateRequest(
        firstName: $checkedConvert('firstName', (v) => v as String?),
        middleName: $checkedConvert('middleName', (v) => v as String?),
        surname: $checkedConvert('surname', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$NameUpdateRequestToJson(_NameUpdateRequest instance) =>
    <String, dynamic>{
      'firstName': ?instance.firstName,
      'middleName': ?instance.middleName,
      'surname': ?instance.surname,
    };
