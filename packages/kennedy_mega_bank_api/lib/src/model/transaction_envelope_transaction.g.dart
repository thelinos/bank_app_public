// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_envelope_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionEnvelopeTransaction _$TransactionEnvelopeTransactionFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_TransactionEnvelopeTransaction', json, ($checkedConvert) {
  final val = _TransactionEnvelopeTransaction(
    id: $checkedConvert('id', (v) => v as String?),
    accountId: $checkedConvert('accountId', (v) => v as String?),
    amount: $checkedConvert('amount', (v) => v as String?),
    currency: $checkedConvert('currency', (v) => v as String?),
    type: $checkedConvert(
      'type',
      (v) => $enumDecodeNullable(
        _$TransactionEnvelopeTransactionTypeEnumEnumMap,
        v,
        unknownValue:
            TransactionEnvelopeTransactionTypeEnum.unknownDefaultOpenApi,
      ),
    ),
    description: $checkedConvert('description', (v) => v as String?),
    createdAt: $checkedConvert(
      'createdAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
  );
  return val;
});

Map<String, dynamic> _$TransactionEnvelopeTransactionToJson(
  _TransactionEnvelopeTransaction instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'accountId': ?instance.accountId,
  'amount': ?instance.amount,
  'currency': ?instance.currency,
  'type': ?_$TransactionEnvelopeTransactionTypeEnumEnumMap[instance.type],
  'description': ?instance.description,
  'createdAt': ?instance.createdAt?.toIso8601String(),
};

const _$TransactionEnvelopeTransactionTypeEnumEnumMap = {
  TransactionEnvelopeTransactionTypeEnum.credit: 'credit',
  TransactionEnvelopeTransactionTypeEnum.debit: 'debit',
  TransactionEnvelopeTransactionTypeEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
