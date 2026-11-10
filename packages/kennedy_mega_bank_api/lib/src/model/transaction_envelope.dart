import "package:freezed_annotation/freezed_annotation.dart";
import "package:kennedy_mega_bank_api/src/model/account_envelope_account.dart";
import "package:kennedy_mega_bank_api/src/model/transaction_envelope_transaction.dart";

part "transaction_envelope.freezed.dart";
part "transaction_envelope.g.dart";

@freezed
abstract class TransactionEnvelope with _$TransactionEnvelope {
  /// Returns a new [TransactionEnvelope] instance.
  const factory TransactionEnvelope({
    @JsonKey(name: "message", required: true, includeIfNull: false)
    required String message,
    @JsonKey(name: "status", required: true, includeIfNull: false)
    required int status,
    @JsonKey(name: "account", required: true, includeIfNull: false)
    required AccountEnvelopeAccount account,
    @JsonKey(name: "transaction", required: true, includeIfNull: false)
    required TransactionEnvelopeTransaction transaction,
  }) = _TransactionEnvelope;

  factory TransactionEnvelope.fromJson(Map<String, dynamic> json) =>
      _$TransactionEnvelopeFromJson(json);
}
