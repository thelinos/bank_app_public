// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_password_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmailPasswordRequest {

@JsonKey(name: "email", required: true, includeIfNull: false) String get email;@JsonKey(name: "password", required: true, includeIfNull: false) String get password;
/// Create a copy of EmailPasswordRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailPasswordRequestCopyWith<EmailPasswordRequest> get copyWith => _$EmailPasswordRequestCopyWithImpl<EmailPasswordRequest>(this as EmailPasswordRequest, _$identity);

  /// Serializes this EmailPasswordRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailPasswordRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'EmailPasswordRequest(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $EmailPasswordRequestCopyWith<$Res>  {
  factory $EmailPasswordRequestCopyWith(EmailPasswordRequest value, $Res Function(EmailPasswordRequest) _then) = _$EmailPasswordRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "email", required: true, includeIfNull: false) String email,@JsonKey(name: "password", required: true, includeIfNull: false) String password
});




}
/// @nodoc
class _$EmailPasswordRequestCopyWithImpl<$Res>
    implements $EmailPasswordRequestCopyWith<$Res> {
  _$EmailPasswordRequestCopyWithImpl(this._self, this._then);

  final EmailPasswordRequest _self;
  final $Res Function(EmailPasswordRequest) _then;

/// Create a copy of EmailPasswordRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EmailPasswordRequest].
extension EmailPasswordRequestPatterns on EmailPasswordRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmailPasswordRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmailPasswordRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmailPasswordRequest value)  $default,){
final _that = this;
switch (_that) {
case _EmailPasswordRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmailPasswordRequest value)?  $default,){
final _that = this;
switch (_that) {
case _EmailPasswordRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "email", required: true, includeIfNull: false)  String email, @JsonKey(name: "password", required: true, includeIfNull: false)  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmailPasswordRequest() when $default != null:
return $default(_that.email,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "email", required: true, includeIfNull: false)  String email, @JsonKey(name: "password", required: true, includeIfNull: false)  String password)  $default,) {final _that = this;
switch (_that) {
case _EmailPasswordRequest():
return $default(_that.email,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "email", required: true, includeIfNull: false)  String email, @JsonKey(name: "password", required: true, includeIfNull: false)  String password)?  $default,) {final _that = this;
switch (_that) {
case _EmailPasswordRequest() when $default != null:
return $default(_that.email,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmailPasswordRequest implements EmailPasswordRequest {
  const _EmailPasswordRequest({@JsonKey(name: "email", required: true, includeIfNull: false) required this.email, @JsonKey(name: "password", required: true, includeIfNull: false) required this.password});
  factory _EmailPasswordRequest.fromJson(Map<String, dynamic> json) => _$EmailPasswordRequestFromJson(json);

@override@JsonKey(name: "email", required: true, includeIfNull: false) final  String email;
@override@JsonKey(name: "password", required: true, includeIfNull: false) final  String password;

/// Create a copy of EmailPasswordRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailPasswordRequestCopyWith<_EmailPasswordRequest> get copyWith => __$EmailPasswordRequestCopyWithImpl<_EmailPasswordRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmailPasswordRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailPasswordRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'EmailPasswordRequest(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$EmailPasswordRequestCopyWith<$Res> implements $EmailPasswordRequestCopyWith<$Res> {
  factory _$EmailPasswordRequestCopyWith(_EmailPasswordRequest value, $Res Function(_EmailPasswordRequest) _then) = __$EmailPasswordRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "email", required: true, includeIfNull: false) String email,@JsonKey(name: "password", required: true, includeIfNull: false) String password
});




}
/// @nodoc
class __$EmailPasswordRequestCopyWithImpl<$Res>
    implements _$EmailPasswordRequestCopyWith<$Res> {
  __$EmailPasswordRequestCopyWithImpl(this._self, this._then);

  final _EmailPasswordRequest _self;
  final $Res Function(_EmailPasswordRequest) _then;

/// Create a copy of EmailPasswordRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_EmailPasswordRequest(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
