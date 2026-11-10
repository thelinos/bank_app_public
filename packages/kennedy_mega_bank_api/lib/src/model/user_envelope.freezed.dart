// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_envelope.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserEnvelope {

@JsonKey(name: "message", required: true, includeIfNull: false) String get message;@JsonKey(name: "status", required: true, includeIfNull: false) int get status;/// User profile; password is never returned.
@JsonKey(name: "user", required: true, includeIfNull: false) Object get user;
/// Create a copy of UserEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserEnvelopeCopyWith<UserEnvelope> get copyWith => _$UserEnvelopeCopyWithImpl<UserEnvelope>(this as UserEnvelope, _$identity);

  /// Serializes this UserEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEnvelope&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.user, user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,status,const DeepCollectionEquality().hash(user));

@override
String toString() {
  return 'UserEnvelope(message: $message, status: $status, user: $user)';
}


}

/// @nodoc
abstract mixin class $UserEnvelopeCopyWith<$Res>  {
  factory $UserEnvelopeCopyWith(UserEnvelope value, $Res Function(UserEnvelope) _then) = _$UserEnvelopeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "message", required: true, includeIfNull: false) String message,@JsonKey(name: "status", required: true, includeIfNull: false) int status,@JsonKey(name: "user", required: true, includeIfNull: false) Object user
});




}
/// @nodoc
class _$UserEnvelopeCopyWithImpl<$Res>
    implements $UserEnvelopeCopyWith<$Res> {
  _$UserEnvelopeCopyWithImpl(this._self, this._then);

  final UserEnvelope _self;
  final $Res Function(UserEnvelope) _then;

/// Create a copy of UserEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? status = null,Object? user = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,user: null == user ? _self.user : user ,
  ));
}

}


/// Adds pattern-matching-related methods to [UserEnvelope].
extension UserEnvelopePatterns on UserEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _UserEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _UserEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "message", required: true, includeIfNull: false)  String message, @JsonKey(name: "status", required: true, includeIfNull: false)  int status, @JsonKey(name: "user", required: true, includeIfNull: false)  Object user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserEnvelope() when $default != null:
return $default(_that.message,_that.status,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "message", required: true, includeIfNull: false)  String message, @JsonKey(name: "status", required: true, includeIfNull: false)  int status, @JsonKey(name: "user", required: true, includeIfNull: false)  Object user)  $default,) {final _that = this;
switch (_that) {
case _UserEnvelope():
return $default(_that.message,_that.status,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "message", required: true, includeIfNull: false)  String message, @JsonKey(name: "status", required: true, includeIfNull: false)  int status, @JsonKey(name: "user", required: true, includeIfNull: false)  Object user)?  $default,) {final _that = this;
switch (_that) {
case _UserEnvelope() when $default != null:
return $default(_that.message,_that.status,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserEnvelope implements UserEnvelope {
  const _UserEnvelope({@JsonKey(name: "message", required: true, includeIfNull: false) required this.message, @JsonKey(name: "status", required: true, includeIfNull: false) required this.status, @JsonKey(name: "user", required: true, includeIfNull: false) required this.user});
  factory _UserEnvelope.fromJson(Map<String, dynamic> json) => _$UserEnvelopeFromJson(json);

@override@JsonKey(name: "message", required: true, includeIfNull: false) final  String message;
@override@JsonKey(name: "status", required: true, includeIfNull: false) final  int status;
/// User profile; password is never returned.
@override@JsonKey(name: "user", required: true, includeIfNull: false) final  Object user;

/// Create a copy of UserEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserEnvelopeCopyWith<_UserEnvelope> get copyWith => __$UserEnvelopeCopyWithImpl<_UserEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserEnvelope&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.user, user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,status,const DeepCollectionEquality().hash(user));

@override
String toString() {
  return 'UserEnvelope(message: $message, status: $status, user: $user)';
}


}

/// @nodoc
abstract mixin class _$UserEnvelopeCopyWith<$Res> implements $UserEnvelopeCopyWith<$Res> {
  factory _$UserEnvelopeCopyWith(_UserEnvelope value, $Res Function(_UserEnvelope) _then) = __$UserEnvelopeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "message", required: true, includeIfNull: false) String message,@JsonKey(name: "status", required: true, includeIfNull: false) int status,@JsonKey(name: "user", required: true, includeIfNull: false) Object user
});




}
/// @nodoc
class __$UserEnvelopeCopyWithImpl<$Res>
    implements _$UserEnvelopeCopyWith<$Res> {
  __$UserEnvelopeCopyWithImpl(this._self, this._then);

  final _UserEnvelope _self;
  final $Res Function(_UserEnvelope) _then;

/// Create a copy of UserEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? status = null,Object? user = null,}) {
  return _then(_UserEnvelope(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,user: null == user ? _self.user : user ,
  ));
}


}

// dart format on
