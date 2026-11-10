// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transaction_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateTransactionRequest _$CreateTransactionRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_CreateTransactionRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['accountId', 'amount', 'type']);
  final val = _CreateTransactionRequest(
    accountId: $checkedConvert('accountId', (v) => v as String),
    amount: $checkedConvert('amount', (v) => v),
    type: $checkedConvert(
      'type',
      (v) => $enumDecode(
        _$CreateTransactionRequestTypeEnumEnumMap,
        v,
        unknownValue: CreateTransactionRequestTypeEnum.unknownDefaultOpenApi,
      ),
    ),
    description: $checkedConvert('description', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$CreateTransactionRequestToJson(
  _CreateTransactionRequest instance,
) => <String, dynamic>{
  'accountId': instance.accountId,
  'amount': instance.amount,
  'type': _$CreateTransactionRequestTypeEnumEnumMap[instance.type]!,
  'description': ?instance.description,
};

const _$CreateTransactionRequestTypeEnumEnumMap = {
  CreateTransactionRequestTypeEnum.credit: 'credit',
  CreateTransactionRequestTypeEnum.debit: 'debit',
  CreateTransactionRequestTypeEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
