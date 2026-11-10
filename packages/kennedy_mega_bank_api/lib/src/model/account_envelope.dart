import "package:freezed_annotation/freezed_annotation.dart";
import "package:kennedy_mega_bank_api/src/model/account_envelope_account.dart";

part "account_envelope.freezed.dart";
part "account_envelope.g.dart";

@freezed
abstract class AccountEnvelope with _$AccountEnvelope {
  /// Returns a new [AccountEnvelope] instance.
  const factory AccountEnvelope({
    @JsonKey(name: "message", required: true, includeIfNull: false)
    required String message,
    @JsonKey(name: "status", required: true, includeIfNull: false)
    required int status,
    @JsonKey(name: "account", required: true, includeIfNull: false)
    required AccountEnvelopeAccount account,
  }) = _AccountEnvelope;

  factory AccountEnvelope.fromJson(Map<String, dynamic> json) =>
      _$AccountEnvelopeFromJson(json);
}
