// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmailRequest {

@JsonKey(name: "email", required: true, includeIfNull: false) String get email;
/// Create a copy of EmailRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailRequestCopyWith<EmailRequest> get copyWith => _$EmailRequestCopyWithImpl<EmailRequest>(this as EmailRequest, _$identity);

  /// Serializes this EmailRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailRequest&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'EmailRequest(email: $email)';
}


}

/// @nodoc
abstract mixin class $EmailRequestCopyWith<$Res>  {
  factory $EmailRequestCopyWith(EmailRequest value, $Res Function(EmailRequest) _then) = _$EmailRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "email", required: true, includeIfNull: false) String email
});




}
/// @nodoc
class _$EmailRequestCopyWithImpl<$Res>
    implements $EmailRequestCopyWith<$Res> {
  _$EmailRequestCopyWithImpl(this._self, this._then);

  final EmailRequest _self;
  final $Res Function(EmailRequest) _then;

/// Create a copy of EmailRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EmailRequest].
extension EmailRequestPatterns on EmailRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmailRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmailRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmailRequest value)  $default,){
final _that = this;
switch (_that) {
case _EmailRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmailRequest value)?  $default,){
final _that = this;
switch (_that) {
case _EmailRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "email", required: true, includeIfNull: false)  String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmailRequest() when $default != null:
return $default(_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "email", required: true, includeIfNull: false)  String email)  $default,) {final _that = this;
switch (_that) {
case _EmailRequest():
return $default(_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "email", required: true, includeIfNull: false)  String email)?  $default,) {final _that = this;
switch (_that) {
case _EmailRequest() when $default != null:
return $default(_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmailRequest implements EmailRequest {
  const _EmailRequest({@JsonKey(name: "email", required: true, includeIfNull: false) required this.email});
  factory _EmailRequest.fromJson(Map<String, dynamic> json) => _$EmailRequestFromJson(json);

@override@JsonKey(name: "email", required: true, includeIfNull: false) final  String email;

/// Create a copy of EmailRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailRequestCopyWith<_EmailRequest> get copyWith => __$EmailRequestCopyWithImpl<_EmailRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmailRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailRequest&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'EmailRequest(email: $email)';
}


}

/// @nodoc
abstract mixin class _$EmailRequestCopyWith<$Res> implements $EmailRequestCopyWith<$Res> {
  factory _$EmailRequestCopyWith(_EmailRequest value, $Res Function(_EmailRequest) _then) = __$EmailRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "email", required: true, includeIfNull: false) String email
});




}
/// @nodoc
class __$EmailRequestCopyWithImpl<$Res>
    implements _$EmailRequestCopyWith<$Res> {
  __$EmailRequestCopyWithImpl(this._self, this._then);

  final _EmailRequest _self;
  final $Res Function(_EmailRequest) _then;

/// Create a copy of EmailRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_EmailRequest(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
