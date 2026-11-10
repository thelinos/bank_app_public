// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_get200_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HealthGet200Response {

@JsonKey(name: "status", required: true, includeIfNull: false) String get status;@JsonKey(name: "environment", required: true, includeIfNull: false) String get environment;@JsonKey(name: "database", required: true, includeIfNull: false, unknownEnumValue: HealthGet200ResponseDatabaseEnum.unknownDefaultOpenApi) HealthGet200ResponseDatabaseEnum get database;
/// Create a copy of HealthGet200Response
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthGet200ResponseCopyWith<HealthGet200Response> get copyWith => _$HealthGet200ResponseCopyWithImpl<HealthGet200Response>(this as HealthGet200Response, _$identity);

  /// Serializes this HealthGet200Response to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthGet200Response&&(identical(other.status, status) || other.status == status)&&(identical(other.environment, environment) || other.environment == environment)&&(identical(other.database, database) || other.database == database));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,environment,database);

@override
String toString() {
  return 'HealthGet200Response(status: $status, environment: $environment, database: $database)';
}


}

/// @nodoc
abstract mixin class $HealthGet200ResponseCopyWith<$Res>  {
  factory $HealthGet200ResponseCopyWith(HealthGet200Response value, $Res Function(HealthGet200Response) _then) = _$HealthGet200ResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status", required: true, includeIfNull: false) String status,@JsonKey(name: "environment", required: true, includeIfNull: false) String environment,@JsonKey(name: "database", required: true, includeIfNull: false, unknownEnumValue: HealthGet200ResponseDatabaseEnum.unknownDefaultOpenApi) HealthGet200ResponseDatabaseEnum database
});




}
/// @nodoc
class _$HealthGet200ResponseCopyWithImpl<$Res>
    implements $HealthGet200ResponseCopyWith<$Res> {
  _$HealthGet200ResponseCopyWithImpl(this._self, this._then);

  final HealthGet200Response _self;
  final $Res Function(HealthGet200Response) _then;

/// Create a copy of HealthGet200Response
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? environment = null,Object? database = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,environment: null == environment ? _self.environment : environment // ignore: cast_nullable_to_non_nullable
as String,database: null == database ? _self.database : database // ignore: cast_nullable_to_non_nullable
as HealthGet200ResponseDatabaseEnum,
  ));
}

}


/// Adds pattern-matching-related methods to [HealthGet200Response].
extension HealthGet200ResponsePatterns on HealthGet200Response {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthGet200Response value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthGet200Response() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthGet200Response value)  $default,){
final _that = this;
switch (_that) {
case _HealthGet200Response():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthGet200Response value)?  $default,){
final _that = this;
switch (_that) {
case _HealthGet200Response() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status", required: true, includeIfNull: false)  String status, @JsonKey(name: "environment", required: true, includeIfNull: false)  String environment, @JsonKey(name: "database", required: true, includeIfNull: false, unknownEnumValue: HealthGet200ResponseDatabaseEnum.unknownDefaultOpenApi)  HealthGet200ResponseDatabaseEnum database)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthGet200Response() when $default != null:
return $default(_that.status,_that.environment,_that.database);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status", required: true, includeIfNull: false)  String status, @JsonKey(name: "environment", required: true, includeIfNull: false)  String environment, @JsonKey(name: "database", required: true, includeIfNull: false, unknownEnumValue: HealthGet200ResponseDatabaseEnum.unknownDefaultOpenApi)  HealthGet200ResponseDatabaseEnum database)  $default,) {final _that = this;
switch (_that) {
case _HealthGet200Response():
return $default(_that.status,_that.environment,_that.database);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status", required: true, includeIfNull: false)  String status, @JsonKey(name: "environment", required: true, includeIfNull: false)  String environment, @JsonKey(name: "database", required: true, includeIfNull: false, unknownEnumValue: HealthGet200ResponseDatabaseEnum.unknownDefaultOpenApi)  HealthGet200ResponseDatabaseEnum database)?  $default,) {final _that = this;
switch (_that) {
case _HealthGet200Response() when $default != null:
return $default(_that.status,_that.environment,_that.database);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthGet200Response implements HealthGet200Response {
  const _HealthGet200Response({@JsonKey(name: "status", required: true, includeIfNull: false) required this.status, @JsonKey(name: "environment", required: true, includeIfNull: false) required this.environment, @JsonKey(name: "database", required: true, includeIfNull: false, unknownEnumValue: HealthGet200ResponseDatabaseEnum.unknownDefaultOpenApi) required this.database});
  factory _HealthGet200Response.fromJson(Map<String, dynamic> json) => _$HealthGet200ResponseFromJson(json);

@override@JsonKey(name: "status", required: true, includeIfNull: false) final  String status;
@override@JsonKey(name: "environment", required: true, includeIfNull: false) final  String environment;
@override@JsonKey(name: "database", required: true, includeIfNull: false, unknownEnumValue: HealthGet200ResponseDatabaseEnum.unknownDefaultOpenApi) final  HealthGet200ResponseDatabaseEnum database;

/// Create a copy of HealthGet200Response
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthGet200ResponseCopyWith<_HealthGet200Response> get copyWith => __$HealthGet200ResponseCopyWithImpl<_HealthGet200Response>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealthGet200ResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthGet200Response&&(identical(other.status, status) || other.status == status)&&(identical(other.environment, environment) || other.environment == environment)&&(identical(other.database, database) || other.database == database));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,environment,database);

@override
String toString() {
  return 'HealthGet200Response(status: $status, environment: $environment, database: $database)';
}


}

/// @nodoc
abstract mixin class _$HealthGet200ResponseCopyWith<$Res> implements $HealthGet200ResponseCopyWith<$Res> {
  factory _$HealthGet200ResponseCopyWith(_HealthGet200Response value, $Res Function(_HealthGet200Response) _then) = __$HealthGet200ResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status", required: true, includeIfNull: false) String status,@JsonKey(name: "environment", required: true, includeIfNull: false) String environment,@JsonKey(name: "database", required: true, includeIfNull: false, unknownEnumValue: HealthGet200ResponseDatabaseEnum.unknownDefaultOpenApi) HealthGet200ResponseDatabaseEnum database
});




}
/// @nodoc
class __$HealthGet200ResponseCopyWithImpl<$Res>
    implements _$HealthGet200ResponseCopyWith<$Res> {
  __$HealthGet200ResponseCopyWithImpl(this._self, this._then);

  final _HealthGet200Response _self;
  final $Res Function(_HealthGet200Response) _then;

/// Create a copy of HealthGet200Response
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? environment = null,Object? database = null,}) {
  return _then(_HealthGet200Response(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,environment: null == environment ? _self.environment : environment // ignore: cast_nullable_to_non_nullable
as String,database: null == database ? _self.database : database // ignore: cast_nullable_to_non_nullable
as HealthGet200ResponseDatabaseEnum,
  ));
}


}

// dart format on
