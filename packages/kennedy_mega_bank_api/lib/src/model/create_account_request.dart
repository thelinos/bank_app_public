import "package:freezed_annotation/freezed_annotation.dart";

part "create_account_request.freezed.dart";
part "create_account_request.g.dart";

@freezed
abstract class CreateAccountRequest with _$CreateAccountRequest {
  /// Returns a new [CreateAccountRequest] instance.
  const factory CreateAccountRequest({
    @JsonKey(
      name: "accountType",
      required: true,
      includeIfNull: false,
      unknownEnumValue:
          CreateAccountRequestAccountTypeEnum.unknownDefaultOpenApi,
    )
    required CreateAccountRequestAccountTypeEnum accountType,
    @Default("USD")
    @JsonKey(name: "currency", required: false, includeIfNull: false)
    String? currency,
  }) = _CreateAccountRequest;

  factory CreateAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountRequestFromJson(json);
}

enum CreateAccountRequestAccountTypeEnum {
  @JsonValue("checking")
  checking("checking"),
  @JsonValue("savings")
  savings("savings"),
  @JsonValue("unknown_default_open_api")
  unknownDefaultOpenApi("unknown_default_open_api");

  const CreateAccountRequestAccountTypeEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
