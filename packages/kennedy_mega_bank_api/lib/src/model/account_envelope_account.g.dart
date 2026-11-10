// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_envelope_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountEnvelopeAccount _$AccountEnvelopeAccountFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_AccountEnvelopeAccount', json, ($checkedConvert) {
  final val = _AccountEnvelopeAccount(
    id: $checkedConvert('id', (v) => v as String?),
    userId: $checkedConvert('userId', (v) => v as String?),
    accountType: $checkedConvert(
      'accountType',
      (v) => $enumDecodeNullable(
        _$AccountEnvelopeAccountAccountTypeEnumEnumMap,
        v,
        unknownValue:
            AccountEnvelopeAccountAccountTypeEnum.unknownDefaultOpenApi,
      ),
    ),
    balance: $checkedConvert('balance', (v) => v as String?),
    currency: $checkedConvert('currency', (v) => v as String?),
    createdAt: $checkedConvert(
      'createdAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    updatedAt: $checkedConvert(
      'updatedAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
  );
  return val;
});

Map<String, dynamic> _$AccountEnvelopeAccountToJson(
  _AccountEnvelopeAccount instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'userId': ?instance.userId,
  'accountType':
      ?_$AccountEnvelopeAccountAccountTypeEnumEnumMap[instance.accountType],
  'balance': ?instance.balance,
  'currency': ?instance.currency,
  'createdAt': ?instance.createdAt?.toIso8601String(),
  'updatedAt': ?instance.updatedAt?.toIso8601String(),
};

const _$AccountEnvelopeAccountAccountTypeEnumEnumMap = {
  AccountEnvelopeAccountAccountTypeEnum.checking: 'checking',
  AccountEnvelopeAccountAccountTypeEnum.savings: 'savings',
  AccountEnvelopeAccountAccountTypeEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
