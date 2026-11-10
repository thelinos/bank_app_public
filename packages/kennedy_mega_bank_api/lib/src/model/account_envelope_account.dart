import "package:freezed_annotation/freezed_annotation.dart";

part "account_envelope_account.freezed.dart";
part "account_envelope_account.g.dart";

@freezed
abstract class AccountEnvelopeAccount with _$AccountEnvelopeAccount {
  /// Returns a new [AccountEnvelopeAccount] instance.
  const factory AccountEnvelopeAccount({
    @JsonKey(name: "id", required: false, includeIfNull: false) String? id,
    @JsonKey(name: "userId", required: false, includeIfNull: false)
    String? userId,
    @JsonKey(
      name: "accountType",
      required: false,
      includeIfNull: false,
      unknownEnumValue:
          AccountEnvelopeAccountAccountTypeEnum.unknownDefaultOpenApi,
    )
    AccountEnvelopeAccountAccountTypeEnum? accountType,
    @JsonKey(name: "balance", required: false, includeIfNull: false)
    String? balance,
    @JsonKey(name: "currency", required: false, includeIfNull: false)
    String? currency,
    @JsonKey(name: "createdAt", required: false, includeIfNull: false)
    DateTime? createdAt,
    @JsonKey(name: "updatedAt", required: false, includeIfNull: false)
    DateTime? updatedAt,
  }) = _AccountEnvelopeAccount;

  factory AccountEnvelopeAccount.fromJson(Map<String, dynamic> json) =>
      _$AccountEnvelopeAccountFromJson(json);
}

enum AccountEnvelopeAccountAccountTypeEnum {
  @JsonValue("checking")
  checking("checking"),
  @JsonValue("savings")
  savings("savings"),
  @JsonValue("unknown_default_open_api")
  unknownDefaultOpenApi("unknown_default_open_api");

  const AccountEnvelopeAccountAccountTypeEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
