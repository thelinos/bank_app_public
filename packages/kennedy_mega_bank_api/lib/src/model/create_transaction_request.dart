import "package:freezed_annotation/freezed_annotation.dart";

part "create_transaction_request.freezed.dart";
part "create_transaction_request.g.dart";

@freezed
abstract class CreateTransactionRequest with _$CreateTransactionRequest {
  /// Returns a new [CreateTransactionRequest] instance.
  const factory CreateTransactionRequest({
    @JsonKey(name: "accountId", required: true, includeIfNull: false)
    required String accountId,
    @JsonKey(name: "amount", required: true, includeIfNull: true)
    required Object? amount,
    @JsonKey(
      name: "type",
      required: true,
      includeIfNull: false,
      unknownEnumValue: CreateTransactionRequestTypeEnum.unknownDefaultOpenApi,
    )
    required CreateTransactionRequestTypeEnum type,
    @JsonKey(name: "description", required: false, includeIfNull: false)
    String? description,
  }) = _CreateTransactionRequest;

  factory CreateTransactionRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateTransactionRequestFromJson(json);
}

enum CreateTransactionRequestTypeEnum {
  @JsonValue("credit")
  credit("credit"),
  @JsonValue("debit")
  debit("debit"),
  @JsonValue("unknown_default_open_api")
  unknownDefaultOpenApi("unknown_default_open_api");

  const CreateTransactionRequestTypeEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
