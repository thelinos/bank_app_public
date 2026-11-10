// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_envelope.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionEnvelope {

@JsonKey(name: "message", required: true, includeIfNull: false) String get message;@JsonKey(name: "status", required: true, includeIfNull: false) int get status;@JsonKey(name: "account", required: true, includeIfNull: false) AccountEnvelopeAccount get account;@JsonKey(name: "transaction", required: true, includeIfNull: false) TransactionEnvelopeTransaction get transaction;
/// Create a copy of TransactionEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionEnvelopeCopyWith<TransactionEnvelope> get copyWith => _$TransactionEnvelopeCopyWithImpl<TransactionEnvelope>(this as TransactionEnvelope, _$identity);

  /// Serializes this TransactionEnvelope to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionEnvelope&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&(identical(other.account, account) || other.account == account)&&(identical(other.transaction, transaction) || other.transaction == transaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,status,account,transaction);

@override
String toString() {
  return 'TransactionEnvelope(message: $message, status: $status, account: $account, transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class $TransactionEnvelopeCopyWith<$Res>  {
  factory $TransactionEnvelopeCopyWith(TransactionEnvelope value, $Res Function(TransactionEnvelope) _then) = _$TransactionEnvelopeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "message", required: true, includeIfNull: false) String message,@JsonKey(name: "status", required: true, includeIfNull: false) int status,@JsonKey(name: "account", required: true, includeIfNull: false) AccountEnvelopeAccount account,@JsonKey(name: "transaction", required: true, includeIfNull: false) TransactionEnvelopeTransaction transaction
});


$AccountEnvelopeAccountCopyWith<$Res> get account;$TransactionEnvelopeTransactionCopyWith<$Res> get transaction;

}
/// @nodoc
class _$TransactionEnvelopeCopyWithImpl<$Res>
    implements $TransactionEnvelopeCopyWith<$Res> {
  _$TransactionEnvelopeCopyWithImpl(this._self, this._then);

  final TransactionEnvelope _self;
  final $Res Function(TransactionEnvelope) _then;

/// Create a copy of TransactionEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? status = null,Object? account = null,Object? transaction = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as AccountEnvelopeAccount,transaction: null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as TransactionEnvelopeTransaction,
  ));
}
/// Create a copy of TransactionEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountEnvelopeAccountCopyWith<$Res> get account {
  
  return $AccountEnvelopeAccountCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}/// Create a copy of TransactionEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionEnvelopeTransactionCopyWith<$Res> get transaction {
  
  return $TransactionEnvelopeTransactionCopyWith<$Res>(_self.transaction, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}


/// Adds pattern-matching-related methods to [TransactionEnvelope].
extension TransactionEnvelopePatterns on TransactionEnvelope {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionEnvelope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionEnvelope() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionEnvelope value)  $default,){
final _that = this;
switch (_that) {
case _TransactionEnvelope():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionEnvelope value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionEnvelope() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "message", required: true, includeIfNull: false)  String message, @JsonKey(name: "status", required: true, includeIfNull: false)  int status, @JsonKey(name: "account", required: true, includeIfNull: false)  AccountEnvelopeAccount account, @JsonKey(name: "transaction", required: true, includeIfNull: false)  TransactionEnvelopeTransaction transaction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionEnvelope() when $default != null:
return $default(_that.message,_that.status,_that.account,_that.transaction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "message", required: true, includeIfNull: false)  String message, @JsonKey(name: "status", required: true, includeIfNull: false)  int status, @JsonKey(name: "account", required: true, includeIfNull: false)  AccountEnvelopeAccount account, @JsonKey(name: "transaction", required: true, includeIfNull: false)  TransactionEnvelopeTransaction transaction)  $default,) {final _that = this;
switch (_that) {
case _TransactionEnvelope():
return $default(_that.message,_that.status,_that.account,_that.transaction);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "message", required: true, includeIfNull: false)  String message, @JsonKey(name: "status", required: true, includeIfNull: false)  int status, @JsonKey(name: "account", required: true, includeIfNull: false)  AccountEnvelopeAccount account, @JsonKey(name: "transaction", required: true, includeIfNull: false)  TransactionEnvelopeTransaction transaction)?  $default,) {final _that = this;
switch (_that) {
case _TransactionEnvelope() when $default != null:
return $default(_that.message,_that.status,_that.account,_that.transaction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionEnvelope implements TransactionEnvelope {
  const _TransactionEnvelope({@JsonKey(name: "message", required: true, includeIfNull: false) required this.message, @JsonKey(name: "status", required: true, includeIfNull: false) required this.status, @JsonKey(name: "account", required: true, includeIfNull: false) required this.account, @JsonKey(name: "transaction", required: true, includeIfNull: false) required this.transaction});
  factory _TransactionEnvelope.fromJson(Map<String, dynamic> json) => _$TransactionEnvelopeFromJson(json);

@override@JsonKey(name: "message", required: true, includeIfNull: false) final  String message;
@override@JsonKey(name: "status", required: true, includeIfNull: false) final  int status;
@override@JsonKey(name: "account", required: true, includeIfNull: false) final  AccountEnvelopeAccount account;
@override@JsonKey(name: "transaction", required: true, includeIfNull: false) final  TransactionEnvelopeTransaction transaction;

/// Create a copy of TransactionEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionEnvelopeCopyWith<_TransactionEnvelope> get copyWith => __$TransactionEnvelopeCopyWithImpl<_TransactionEnvelope>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionEnvelopeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionEnvelope&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&(identical(other.account, account) || other.account == account)&&(identical(other.transaction, transaction) || other.transaction == transaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,status,account,transaction);

@override
String toString() {
  return 'TransactionEnvelope(message: $message, status: $status, account: $account, transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class _$TransactionEnvelopeCopyWith<$Res> implements $TransactionEnvelopeCopyWith<$Res> {
  factory _$TransactionEnvelopeCopyWith(_TransactionEnvelope value, $Res Function(_TransactionEnvelope) _then) = __$TransactionEnvelopeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "message", required: true, includeIfNull: false) String message,@JsonKey(name: "status", required: true, includeIfNull: false) int status,@JsonKey(name: "account", required: true, includeIfNull: false) AccountEnvelopeAccount account,@JsonKey(name: "transaction", required: true, includeIfNull: false) TransactionEnvelopeTransaction transaction
});


@override $AccountEnvelopeAccountCopyWith<$Res> get account;@override $TransactionEnvelopeTransactionCopyWith<$Res> get transaction;

}
/// @nodoc
class __$TransactionEnvelopeCopyWithImpl<$Res>
    implements _$TransactionEnvelopeCopyWith<$Res> {
  __$TransactionEnvelopeCopyWithImpl(this._self, this._then);

  final _TransactionEnvelope _self;
  final $Res Function(_TransactionEnvelope) _then;

/// Create a copy of TransactionEnvelope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? status = null,Object? account = null,Object? transaction = null,}) {
  return _then(_TransactionEnvelope(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as AccountEnvelopeAccount,transaction: null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as TransactionEnvelopeTransaction,
  ));
}

/// Create a copy of TransactionEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountEnvelopeAccountCopyWith<$Res> get account {
  
  return $AccountEnvelopeAccountCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}/// Create a copy of TransactionEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionEnvelopeTransactionCopyWith<$Res> get transaction {
  
  return $TransactionEnvelopeTransactionCopyWith<$Res>(_self.transaction, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}

// dart format on
