// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'created_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatedUser {

@JsonKey(name: "message", required: true, includeIfNull: false) String get message;@JsonKey(name: "status", required: true, includeIfNull: false) int get status;@JsonKey(name: "id", required: true, includeIfNull: false) String get id;@JsonKey(name: "emailVerified", required: true, includeIfNull: false) bool get emailVerified;@JsonKey(name: "email", required: false, includeIfNull: false) String? get email;@JsonKey(name: "createdAt", required: false, includeIfNull: false) DateTime? get createdAt;@JsonKey(name: "updatedAt", required: false, includeIfNull: false) DateTime? get updatedAt;
/// Create a copy of CreatedUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatedUserCopyWith<CreatedUser> get copyWith => _$CreatedUserCopyWithImpl<CreatedUser>(this as CreatedUser, _$identity);

  /// Serializes this CreatedUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatedUser&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&(identical(other.id, id) || other.id == id)&&(identical(other.emailVerified, emailVerified) || other.emailVerified == emailVerified)&&(identical(other.email, email) || other.email == email)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,status,id,emailVerified,email,createdAt,updatedAt);

@override
String toString() {
  return 'CreatedUser(message: $message, status: $status, id: $id, emailVerified: $emailVerified, email: $email, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CreatedUserCopyWith<$Res>  {
  factory $CreatedUserCopyWith(CreatedUser value, $Res Function(CreatedUser) _then) = _$CreatedUserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "message", required: true, includeIfNull: false) String message,@JsonKey(name: "status", required: true, includeIfNull: false) int status,@JsonKey(name: "id", required: true, includeIfNull: false) String id,@JsonKey(name: "emailVerified", required: true, includeIfNull: false) bool emailVerified,@JsonKey(name: "email", required: false, includeIfNull: false) String? email,@JsonKey(name: "createdAt", required: false, includeIfNull: false) DateTime? createdAt,@JsonKey(name: "updatedAt", required: false, includeIfNull: false) DateTime? updatedAt
});




}
/// @nodoc
class _$CreatedUserCopyWithImpl<$Res>
    implements $CreatedUserCopyWith<$Res> {
  _$CreatedUserCopyWithImpl(this._self, this._then);

  final CreatedUser _self;
  final $Res Function(CreatedUser) _then;

/// Create a copy of CreatedUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? status = null,Object? id = null,Object? emailVerified = null,Object? email = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,emailVerified: null == emailVerified ? _self.emailVerified : emailVerified // ignore: cast_nullable_to_non_nullable
as bool,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatedUser].
extension CreatedUserPatterns on CreatedUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatedUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatedUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatedUser value)  $default,){
final _that = this;
switch (_that) {
case _CreatedUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatedUser value)?  $default,){
final _that = this;
switch (_that) {
case _CreatedUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "message", required: true, includeIfNull: false)  String message, @JsonKey(name: "status", required: true, includeIfNull: false)  int status, @JsonKey(name: "id", required: true, includeIfNull: false)  String id, @JsonKey(name: "emailVerified", required: true, includeIfNull: false)  bool emailVerified, @JsonKey(name: "email", required: false, includeIfNull: false)  String? email, @JsonKey(name: "createdAt", required: false, includeIfNull: false)  DateTime? createdAt, @JsonKey(name: "updatedAt", required: false, includeIfNull: false)  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatedUser() when $default != null:
return $default(_that.message,_that.status,_that.id,_that.emailVerified,_that.email,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "message", required: true, includeIfNull: false)  String message, @JsonKey(name: "status", required: true, includeIfNull: false)  int status, @JsonKey(name: "id", required: true, includeIfNull: false)  String id, @JsonKey(name: "emailVerified", required: true, includeIfNull: false)  bool emailVerified, @JsonKey(name: "email", required: false, includeIfNull: false)  String? email, @JsonKey(name: "createdAt", required: false, includeIfNull: false)  DateTime? createdAt, @JsonKey(name: "updatedAt", required: false, includeIfNull: false)  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _CreatedUser():
return $default(_that.message,_that.status,_that.id,_that.emailVerified,_that.email,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "message", required: true, includeIfNull: false)  String message, @JsonKey(name: "status", required: true, includeIfNull: false)  int status, @JsonKey(name: "id", required: true, includeIfNull: false)  String id, @JsonKey(name: "emailVerified", required: true, includeIfNull: false)  bool emailVerified, @JsonKey(name: "email", required: false, includeIfNull: false)  String? email, @JsonKey(name: "createdAt", required: false, includeIfNull: false)  DateTime? createdAt, @JsonKey(name: "updatedAt", required: false, includeIfNull: false)  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _CreatedUser() when $default != null:
return $default(_that.message,_that.status,_that.id,_that.emailVerified,_that.email,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatedUser implements CreatedUser {
  const _CreatedUser({@JsonKey(name: "message", required: true, includeIfNull: false) required this.message, @JsonKey(name: "status", required: true, includeIfNull: false) required this.status, @JsonKey(name: "id", required: true, includeIfNull: false) required this.id, @JsonKey(name: "emailVerified", required: true, includeIfNull: false) required this.emailVerified, @JsonKey(name: "email", required: false, includeIfNull: false) this.email, @JsonKey(name: "createdAt", required: false, includeIfNull: false) this.createdAt, @JsonKey(name: "updatedAt", required: false, includeIfNull: false) this.updatedAt});
  factory _CreatedUser.fromJson(Map<String, dynamic> json) => _$CreatedUserFromJson(json);

@override@JsonKey(name: "message", required: true, includeIfNull: false) final  String message;
@override@JsonKey(name: "status", required: true, includeIfNull: false) final  int status;
@override@JsonKey(name: "id", required: true, includeIfNull: false) final  String id;
@override@JsonKey(name: "emailVerified", required: true, includeIfNull: false) final  bool emailVerified;
@override@JsonKey(name: "email", required: false, includeIfNull: false) final  String? email;
@override@JsonKey(name: "createdAt", required: false, includeIfNull: false) final  DateTime? createdAt;
@override@JsonKey(name: "updatedAt", required: false, includeIfNull: false) final  DateTime? updatedAt;

/// Create a copy of CreatedUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatedUserCopyWith<_CreatedUser> get copyWith => __$CreatedUserCopyWithImpl<_CreatedUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatedUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatedUser&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&(identical(other.id, id) || other.id == id)&&(identical(other.emailVerified, emailVerified) || other.emailVerified == emailVerified)&&(identical(other.email, email) || other.email == email)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,status,id,emailVerified,email,createdAt,updatedAt);

@override
String toString() {
  return 'CreatedUser(message: $message, status: $status, id: $id, emailVerified: $emailVerified, email: $email, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CreatedUserCopyWith<$Res> implements $CreatedUserCopyWith<$Res> {
  factory _$CreatedUserCopyWith(_CreatedUser value, $Res Function(_CreatedUser) _then) = __$CreatedUserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "message", required: true, includeIfNull: false) String message,@JsonKey(name: "status", required: true, includeIfNull: false) int status,@JsonKey(name: "id", required: true, includeIfNull: false) String id,@JsonKey(name: "emailVerified", required: true, includeIfNull: false) bool emailVerified,@JsonKey(name: "email", required: false, includeIfNull: false) String? email,@JsonKey(name: "createdAt", required: false, includeIfNull: false) DateTime? createdAt,@JsonKey(name: "updatedAt", required: false, includeIfNull: false) DateTime? updatedAt
});




}
/// @nodoc
class __$CreatedUserCopyWithImpl<$Res>
    implements _$CreatedUserCopyWith<$Res> {
  __$CreatedUserCopyWithImpl(this._self, this._then);

  final _CreatedUser _self;
  final $Res Function(_CreatedUser) _then;

/// Create a copy of CreatedUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? status = null,Object? id = null,Object? emailVerified = null,Object? email = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_CreatedUser(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,emailVerified: null == emailVerified ? _self.emailVerified : emailVerified // ignore: cast_nullable_to_non_nullable
as bool,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
