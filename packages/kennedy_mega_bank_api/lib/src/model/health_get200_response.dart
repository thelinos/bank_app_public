import "package:freezed_annotation/freezed_annotation.dart";

part "health_get200_response.freezed.dart";
part "health_get200_response.g.dart";

@freezed
abstract class HealthGet200Response with _$HealthGet200Response {
  /// Returns a new [HealthGet200Response] instance.
  const factory HealthGet200Response({
    @JsonKey(name: "status", required: true, includeIfNull: false)
    required String status,
    @JsonKey(name: "environment", required: true, includeIfNull: false)
    required String environment,
    @JsonKey(
      name: "database",
      required: true,
      includeIfNull: false,
      unknownEnumValue: HealthGet200ResponseDatabaseEnum.unknownDefaultOpenApi,
    )
    required HealthGet200ResponseDatabaseEnum database,
  }) = _HealthGet200Response;

  factory HealthGet200Response.fromJson(Map<String, dynamic> json) =>
      _$HealthGet200ResponseFromJson(json);
}

enum HealthGet200ResponseDatabaseEnum {
  @JsonValue("PostgreSQL")
  postgreSQL("PostgreSQL"),
  @JsonValue("SQLite")
  sQLite("SQLite"),
  @JsonValue("unknown_default_open_api")
  unknownDefaultOpenApi("unknown_default_open_api");

  const HealthGet200ResponseDatabaseEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
