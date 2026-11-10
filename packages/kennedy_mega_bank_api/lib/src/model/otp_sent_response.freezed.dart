// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_sent_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OtpSentResponse {

@JsonKey(name: "message", required: true, includeIfNull: false) String get message;@JsonKey(name: "status", required: true, includeIfNull: false) int get status;@JsonKey(name: "expiresIn", required: false, includeIfNull: false) int? get expiresIn;
/// Create a copy of OtpSentResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpSentResponseCopyWith<OtpSentResponse> get copyWith => _$OtpSentResponseCopyWithImpl<OtpSentResponse>(this as OtpSentResponse, _$identity);

  /// Serializes this OtpSentResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpSentResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,status,expiresIn);

@override
String toString() {
  return 'OtpSentResponse(message: $message, status: $status, expiresIn: $expiresIn)';
}


}

/// @nodoc
abstract mixin class $OtpSentResponseCopyWith<$Res>  {
  factory $OtpSentResponseCopyWith(OtpSentResponse value, $Res Function(OtpSentResponse) _then) = _$OtpSentResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "message", required: true, includeIfNull: false) String message,@JsonKey(name: "status", required: true, includeIfNull: false) int status,@JsonKey(name: "expiresIn", required: false, includeIfNull: false) int? expiresIn
});




}
/// @nodoc
class _$OtpSentResponseCopyWithImpl<$Res>
    implements $OtpSentResponseCopyWith<$Res> {
  _$OtpSentResponseCopyWithImpl(this._self, this._then);

  final OtpSentResponse _self;
  final $Res Function(OtpSentResponse) _then;

/// Create a copy of OtpSentResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? status = null,Object? expiresIn = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,expiresIn: freezed == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [OtpSentResponse].
extension OtpSentResponsePatterns on OtpSentResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtpSentResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtpSentResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtpSentResponse value)  $default,){
final _that = this;
switch (_that) {
case _OtpSentResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtpSentResponse value)?  $default,){
final _that = this;
switch (_that) {
case _OtpSentResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "message", required: true, includeIfNull: false)  String message, @JsonKey(name: "status", required: true, includeIfNull: false)  int status, @JsonKey(name: "expiresIn", required: false, includeIfNull: false)  int? expiresIn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtpSentResponse() when $default != null:
return $default(_that.message,_that.status,_that.expiresIn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "message", required: true, includeIfNull: false)  String message, @JsonKey(name: "status", required: true, includeIfNull: false)  int status, @JsonKey(name: "expiresIn", required: false, includeIfNull: false)  int? expiresIn)  $default,) {final _that = this;
switch (_that) {
case _OtpSentResponse():
return $default(_that.message,_that.status,_that.expiresIn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "message", required: true, includeIfNull: false)  String message, @JsonKey(name: "status", required: true, includeIfNull: false)  int status, @JsonKey(name: "expiresIn", required: false, includeIfNull: false)  int? expiresIn)?  $default,) {final _that = this;
switch (_that) {
case _OtpSentResponse() when $default != null:
return $default(_that.message,_that.status,_that.expiresIn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OtpSentResponse implements OtpSentResponse {
  const _OtpSentResponse({@JsonKey(name: "message", required: true, includeIfNull: false) required this.message, @JsonKey(name: "status", required: true, includeIfNull: false) required this.status, @JsonKey(name: "expiresIn", required: false, includeIfNull: false) this.expiresIn});
  factory _OtpSentResponse.fromJson(Map<String, dynamic> json) => _$OtpSentResponseFromJson(json);

@override@JsonKey(name: "message", required: true, includeIfNull: false) final  String message;
@override@JsonKey(name: "status", required: true, includeIfNull: false) final  int status;
@override@JsonKey(name: "expiresIn", required: false, includeIfNull: false) final  int? expiresIn;

/// Create a copy of OtpSentResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpSentResponseCopyWith<_OtpSentResponse> get copyWith => __$OtpSentResponseCopyWithImpl<_OtpSentResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OtpSentResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpSentResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,status,expiresIn);

@override
String toString() {
  return 'OtpSentResponse(message: $message, status: $status, expiresIn: $expiresIn)';
}


}

/// @nodoc
abstract mixin class _$OtpSentResponseCopyWith<$Res> implements $OtpSentResponseCopyWith<$Res> {
  factory _$OtpSentResponseCopyWith(_OtpSentResponse value, $Res Function(_OtpSentResponse) _then) = __$OtpSentResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "message", required: true, includeIfNull: false) String message,@JsonKey(name: "status", required: true, includeIfNull: false) int status,@JsonKey(name: "expiresIn", required: false, includeIfNull: false) int? expiresIn
});




}
/// @nodoc
class __$OtpSentResponseCopyWithImpl<$Res>
    implements _$OtpSentResponseCopyWith<$Res> {
  __$OtpSentResponseCopyWithImpl(this._self, this._then);

  final _OtpSentResponse _self;
  final $Res Function(_OtpSentResponse) _then;

/// Create a copy of OtpSentResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? status = null,Object? expiresIn = freezed,}) {
  return _then(_OtpSentResponse(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,expiresIn: freezed == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
