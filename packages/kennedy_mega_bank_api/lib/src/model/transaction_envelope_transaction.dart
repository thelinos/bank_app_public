import "package:freezed_annotation/freezed_annotation.dart";

part "transaction_envelope_transaction.freezed.dart";
part "transaction_envelope_transaction.g.dart";

@freezed
abstract class TransactionEnvelopeTransaction
    with _$TransactionEnvelopeTransaction {
  /// Returns a new [TransactionEnvelopeTransaction] instance.
  const factory TransactionEnvelopeTransaction({
    @JsonKey(name: "id", required: false, includeIfNull: false) String? id,
    @JsonKey(name: "accountId", required: false, includeIfNull: false)
    String? accountId,
    @JsonKey(name: "amount", required: false, includeIfNull: false)
    String? amount,
    @JsonKey(name: "currency", required: false, includeIfNull: false)
    String? currency,
    @JsonKey(
      name: "type",
      required: false,
      includeIfNull: false,
      unknownEnumValue:
          TransactionEnvelopeTransactionTypeEnum.unknownDefaultOpenApi,
    )
    TransactionEnvelopeTransactionTypeEnum? type,
    @JsonKey(name: "description", required: false, includeIfNull: false)
    String? description,
    @JsonKey(name: "createdAt", required: false, includeIfNull: false)
    DateTime? createdAt,
  }) = _TransactionEnvelopeTransaction;

  factory TransactionEnvelopeTransaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionEnvelopeTransactionFromJson(json);
}

enum TransactionEnvelopeTransactionTypeEnum {
  @JsonValue("credit")
  credit("credit"),
  @JsonValue("debit")
  debit("debit"),
  @JsonValue("unknown_default_open_api")
  unknownDefaultOpenApi("unknown_default_open_api");

  const TransactionEnvelopeTransactionTypeEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
