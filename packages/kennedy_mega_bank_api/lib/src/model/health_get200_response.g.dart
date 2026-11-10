// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_get200_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HealthGet200Response _$HealthGet200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_HealthGet200Response', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['status', 'environment', 'database']);
  final val = _HealthGet200Response(
    status: $checkedConvert('status', (v) => v as String),
    environment: $checkedConvert('environment', (v) => v as String),
    database: $checkedConvert(
      'database',
      (v) => $enumDecode(
        _$HealthGet200ResponseDatabaseEnumEnumMap,
        v,
        unknownValue: HealthGet200ResponseDatabaseEnum.unknownDefaultOpenApi,
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$HealthGet200ResponseToJson(
  _HealthGet200Response instance,
) => <String, dynamic>{
  'status': instance.status,
  'environment': instance.environment,
  'database': _$HealthGet200ResponseDatabaseEnumEnumMap[instance.database]!,
};

const _$HealthGet200ResponseDatabaseEnumEnumMap = {
  HealthGet200ResponseDatabaseEnum.postgreSQL: 'PostgreSQL',
  HealthGet200ResponseDatabaseEnum.sQLite: 'SQLite',
  HealthGet200ResponseDatabaseEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
