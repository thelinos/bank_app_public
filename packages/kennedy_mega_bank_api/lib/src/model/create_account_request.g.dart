// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateAccountRequest _$CreateAccountRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_CreateAccountRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['accountType']);
  final val = _CreateAccountRequest(
    accountType: $checkedConvert(
      'accountType',
      (v) => $enumDecode(
        _$CreateAccountRequestAccountTypeEnumEnumMap,
        v,
        unknownValue: CreateAccountRequestAccountTypeEnum.unknownDefaultOpenApi,
      ),
    ),
    currency: $checkedConvert('currency', (v) => v as String? ?? "USD"),
  );
  return val;
});

Map<String, dynamic> _$CreateAccountRequestToJson(
  _CreateAccountRequest instance,
) => <String, dynamic>{
  'accountType':
      _$CreateAccountRequestAccountTypeEnumEnumMap[instance.accountType]!,
  'currency': ?instance.currency,
};

const _$CreateAccountRequestAccountTypeEnumEnumMap = {
  CreateAccountRequestAccountTypeEnum.checking: 'checking',
  CreateAccountRequestAccountTypeEnum.savings: 'savings',
  CreateAccountRequestAccountTypeEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
