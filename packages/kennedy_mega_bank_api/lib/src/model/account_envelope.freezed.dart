// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_envelope.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountEnvelope {

@JsonKey(name: "message", required: true, includeIfNull: false) String get message;@JsonKey(name: "status", required: true, includeIfNull: false) int get status;@JsonKey(name: "account", required: true, includeIfNull: false) AccountEnvelopeAccount get account;
/// Create a copy of AccountEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountEnvelopeCopyWith<AccountEnvelope> get copyWith => _$AccountEnvelopeCopyWithImpl<AccountEnvelope>(this as AccountEnvelope, _$identity);

  /// Serializes this AccountEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountEnvelope&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&(identical(other.account, account) || other.account == account));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,status,account);

@override
String toString() {
  return 'AccountEnvelope(message: $message, status: $status, account: $account)';
}


}

/// @nodoc
abstract mixin class $AccountEnvelopeCopyWith<$Res>  {
  factory $AccountEnvelopeCopyWith(AccountEnvelope value, $Res Function(AccountEnvelope) _then) = _$AccountEnvelopeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "message", required: true, includeIfNull: false) String message,@JsonKey(name: "status", required: true, includeIfNull: false) int status,@JsonKey(name: "account", required: true, includeIfNull: false) AccountEnvelopeAccount account
});


$AccountEnvelopeAccountCopyWith<$Res> get account;

}
/// @nodoc
class _$AccountEnvelopeCopyWithImpl<$Res>
    implements $AccountEnvelopeCopyWith<$Res> {
  _$AccountEnvelopeCopyWithImpl(this._self, this._then);

  final AccountEnvelope _self;
  final $Res Function(AccountEnvelope) _then;

/// Create a copy of AccountEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? status = null,Object? account = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as AccountEnvelopeAccount,
  ));
}
/// Create a copy of AccountEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountEnvelopeAccountCopyWith<$Res> get account {
  
  return $AccountEnvelopeAccountCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}
}


/// Adds pattern-matching-related methods to [AccountEnvelope].
extension AccountEnvelopePatterns on AccountEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _AccountEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _AccountEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "message", required: true, includeIfNull: false)  String message, @JsonKey(name: "status", required: true, includeIfNull: false)  int status, @JsonKey(name: "account", required: true, includeIfNull: false)  AccountEnvelopeAccount account)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountEnvelope() when $default != null:
return $default(_that.message,_that.status,_that.account);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "message", required: true, includeIfNull: false)  String message, @JsonKey(name: "status", required: true, includeIfNull: false)  int status, @JsonKey(name: "account", required: true, includeIfNull: false)  AccountEnvelopeAccount account)  $default,) {final _that = this;
switch (_that) {
case _AccountEnvelope():
return $default(_that.message,_that.status,_that.account);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "message", required: true, includeIfNull: false)  String message, @JsonKey(name: "status", required: true, includeIfNull: false)  int status, @JsonKey(name: "account", required: true, includeIfNull: false)  AccountEnvelopeAccount account)?  $default,) {final _that = this;
switch (_that) {
case _AccountEnvelope() when $default != null:
return $default(_that.message,_that.status,_that.account);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountEnvelope implements AccountEnvelope {
  const _AccountEnvelope({@JsonKey(name: "message", required: true, includeIfNull: false) required this.message, @JsonKey(name: "status", required: true, includeIfNull: false) required this.status, @JsonKey(name: "account", required: true, includeIfNull: false) required this.account});
  factory _AccountEnvelope.fromJson(Map<String, dynamic> json) => _$AccountEnvelopeFromJson(json);

@override@JsonKey(name: "message", required: true, includeIfNull: false) final  String message;
@override@JsonKey(name: "status", required: true, includeIfNull: false) final  int status;
@override@JsonKey(name: "account", required: true, includeIfNull: false) final  AccountEnvelopeAccount account;

/// Create a copy of AccountEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountEnvelopeCopyWith<_AccountEnvelope> get copyWith => __$AccountEnvelopeCopyWithImpl<_AccountEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountEnvelope&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&(identical(other.account, account) || other.account == account));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,status,account);

@override
String toString() {
  return 'AccountEnvelope(message: $message, status: $status, account: $account)';
}


}

/// @nodoc
abstract mixin class _$AccountEnvelopeCopyWith<$Res> implements $AccountEnvelopeCopyWith<$Res> {
  factory _$AccountEnvelopeCopyWith(_AccountEnvelope value, $Res Function(_AccountEnvelope) _then) = __$AccountEnvelopeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "message", required: true, includeIfNull: false) String message,@JsonKey(name: "status", required: true, includeIfNull: false) int status,@JsonKey(name: "account", required: true, includeIfNull: false) AccountEnvelopeAccount account
});


@override $AccountEnvelopeAccountCopyWith<$Res> get account;

}
/// @nodoc
class __$AccountEnvelopeCopyWithImpl<$Res>
    implements _$AccountEnvelopeCopyWith<$Res> {
  __$AccountEnvelopeCopyWithImpl(this._self, this._then);

  final _AccountEnvelope _self;
  final $Res Function(_AccountEnvelope) _then;

/// Create a copy of AccountEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? status = null,Object? account = null,}) {
  return _then(_AccountEnvelope(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as AccountEnvelopeAccount,
  ));
}

/// Create a copy of AccountEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountEnvelopeAccountCopyWith<$Res> get account {
  
  return $AccountEnvelopeAccountCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}
}

// dart format on
