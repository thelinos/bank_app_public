// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountEnvelope _$AccountEnvelopeFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_AccountEnvelope', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['message', 'status', 'account']);
      final val = _AccountEnvelope(
        message: $checkedConvert('message', (v) => v as String),
        status: $checkedConvert('status', (v) => (v as num).toInt()),
        account: $checkedConvert(
          'account',
          (v) => AccountEnvelopeAccount.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$AccountEnvelopeToJson(_AccountEnvelope instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'account': instance.account.toJson(),
    };
