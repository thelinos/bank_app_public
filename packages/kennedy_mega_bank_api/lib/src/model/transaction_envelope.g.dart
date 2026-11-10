// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionEnvelope _$TransactionEnvelopeFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_TransactionEnvelope', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['message', 'status', 'account', 'transaction'],
      );
      final val = _TransactionEnvelope(
        message: $checkedConvert('message', (v) => v as String),
        status: $checkedConvert('status', (v) => (v as num).toInt()),
        account: $checkedConvert(
          'account',
          (v) => AccountEnvelopeAccount.fromJson(v as Map<String, dynamic>),
        ),
        transaction: $checkedConvert(
          'transaction',
          (v) => TransactionEnvelopeTransaction.fromJson(
            v as Map<String, dynamic>,
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$TransactionEnvelopeToJson(
  _TransactionEnvelope instance,
) => <String, dynamic>{
  'message': instance.message,
  'status': instance.status,
  'account': instance.account.toJson(),
  'transaction': instance.transaction.toJson(),
};
