// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_envelope_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionEnvelopeTransaction {

@JsonKey(name: "id", required: false, includeIfNull: false) String? get id;@JsonKey(name: "accountId", required: false, includeIfNull: false) String? get accountId;@JsonKey(name: "amount", required: false, includeIfNull: false) String? get amount;@JsonKey(name: "currency", required: false, includeIfNull: false) String? get currency;@JsonKey(name: "type", required: false, includeIfNull: false, unknownEnumValue: TransactionEnvelopeTransactionTypeEnum.unknownDefaultOpenApi) TransactionEnvelopeTransactionTypeEnum? get type;@JsonKey(name: "description", required: false, includeIfNull: false) String? get description;@JsonKey(name: "createdAt", required: false, includeIfNull: false) DateTime? get createdAt;
/// Create a copy of TransactionEnvelopeTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionEnvelopeTransactionCopyWith<TransactionEnvelopeTransaction> get copyWith => _$TransactionEnvelopeTransactionCopyWithImpl<TransactionEnvelopeTransaction>(this as TransactionEnvelopeTransaction, _$identity);

  /// Serializes this TransactionEnvelopeTransaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionEnvelopeTransaction&&(identical(other.id, id) || other.id == id)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,accountId,amount,currency,type,description,createdAt);

@override
String toString() {
  return 'TransactionEnvelopeTransaction(id: $id, accountId: $accountId, amount: $amount, currency: $currency, type: $type, description: $description, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $TransactionEnvelopeTransactionCopyWith<$Res>  {
  factory $TransactionEnvelopeTransactionCopyWith(TransactionEnvelopeTransaction value, $Res Function(TransactionEnvelopeTransaction) _then) = _$TransactionEnvelopeTransactionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id", required: false, includeIfNull: false) String? id,@JsonKey(name: "accountId", required: false, includeIfNull: false) String? accountId,@JsonKey(name: "amount", required: false, includeIfNull: false) String? amount,@JsonKey(name: "currency", required: false, includeIfNull: false) String? currency,@JsonKey(name: "type", required: false, includeIfNull: false, unknownEnumValue: TransactionEnvelopeTransactionTypeEnum.unknownDefaultOpenApi) TransactionEnvelopeTransactionTypeEnum? type,@JsonKey(name: "description", required: false, includeIfNull: false) String? description,@JsonKey(name: "createdAt", required: false, includeIfNull: false) DateTime? createdAt
});




}
/// @nodoc
class _$TransactionEnvelopeTransactionCopyWithImpl<$Res>
    implements $TransactionEnvelopeTransactionCopyWith<$Res> {
  _$TransactionEnvelopeTransactionCopyWithImpl(this._self, this._then);

  final TransactionEnvelopeTransaction _self;
  final $Res Function(TransactionEnvelopeTransaction) _then;

/// Create a copy of TransactionEnvelopeTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? accountId = freezed,Object? amount = freezed,Object? currency = freezed,Object? type = freezed,Object? description = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionEnvelopeTransactionTypeEnum?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionEnvelopeTransaction].
extension TransactionEnvelopeTransactionPatterns on TransactionEnvelopeTransaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionEnvelopeTransaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionEnvelopeTransaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionEnvelopeTransaction value)  $default,){
final _that = this;
switch (_that) {
case _TransactionEnvelopeTransaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionEnvelopeTransaction value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionEnvelopeTransaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id", required: false, includeIfNull: false)  String? id, @JsonKey(name: "accountId", required: false, includeIfNull: false)  String? accountId, @JsonKey(name: "amount", required: false, includeIfNull: false)  String? amount, @JsonKey(name: "currency", required: false, includeIfNull: false)  String? currency, @JsonKey(name: "type", required: false, includeIfNull: false, unknownEnumValue: TransactionEnvelopeTransactionTypeEnum.unknownDefaultOpenApi)  TransactionEnvelopeTransactionTypeEnum? type, @JsonKey(name: "description", required: false, includeIfNull: false)  String? description, @JsonKey(name: "createdAt", required: false, includeIfNull: false)  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionEnvelopeTransaction() when $default != null:
return $default(_that.id,_that.accountId,_that.amount,_that.currency,_that.type,_that.description,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id", required: false, includeIfNull: false)  String? id, @JsonKey(name: "accountId", required: false, includeIfNull: false)  String? accountId, @JsonKey(name: "amount", required: false, includeIfNull: false)  String? amount, @JsonKey(name: "currency", required: false, includeIfNull: false)  String? currency, @JsonKey(name: "type", required: false, includeIfNull: false, unknownEnumValue: TransactionEnvelopeTransactionTypeEnum.unknownDefaultOpenApi)  TransactionEnvelopeTransactionTypeEnum? type, @JsonKey(name: "description", required: false, includeIfNull: false)  String? description, @JsonKey(name: "createdAt", required: false, includeIfNull: false)  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _TransactionEnvelopeTransaction():
return $default(_that.id,_that.accountId,_that.amount,_that.currency,_that.type,_that.description,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id", required: false, includeIfNull: false)  String? id, @JsonKey(name: "accountId", required: false, includeIfNull: false)  String? accountId, @JsonKey(name: "amount", required: false, includeIfNull: false)  String? amount, @JsonKey(name: "currency", required: false, includeIfNull: false)  String? currency, @JsonKey(name: "type", required: false, includeIfNull: false, unknownEnumValue: TransactionEnvelopeTransactionTypeEnum.unknownDefaultOpenApi)  TransactionEnvelopeTransactionTypeEnum? type, @JsonKey(name: "description", required: false, includeIfNull: false)  String? description, @JsonKey(name: "createdAt", required: false, includeIfNull: false)  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _TransactionEnvelopeTransaction() when $default != null:
return $default(_that.id,_that.accountId,_that.amount,_that.currency,_that.type,_that.description,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionEnvelopeTransaction implements TransactionEnvelopeTransaction {
  const _TransactionEnvelopeTransaction({@JsonKey(name: "id", required: false, includeIfNull: false) this.id, @JsonKey(name: "accountId", required: false, includeIfNull: false) this.accountId, @JsonKey(name: "amount", required: false, includeIfNull: false) this.amount, @JsonKey(name: "currency", required: false, includeIfNull: false) this.currency, @JsonKey(name: "type", required: false, includeIfNull: false, unknownEnumValue: TransactionEnvelopeTransactionTypeEnum.unknownDefaultOpenApi) this.type, @JsonKey(name: "description", required: false, includeIfNull: false) this.description, @JsonKey(name: "createdAt", required: false, includeIfNull: false) this.createdAt});
  factory _TransactionEnvelopeTransaction.fromJson(Map<String, dynamic> json) => _$TransactionEnvelopeTransactionFromJson(json);

@override@JsonKey(name: "id", required: false, includeIfNull: false) final  String? id;
@override@JsonKey(name: "accountId", required: false, includeIfNull: false) final  String? accountId;
@override@JsonKey(name: "amount", required: false, includeIfNull: false) final  String? amount;
@override@JsonKey(name: "currency", required: false, includeIfNull: false) final  String? currency;
@override@JsonKey(name: "type", required: false, includeIfNull: false, unknownEnumValue: TransactionEnvelopeTransactionTypeEnum.unknownDefaultOpenApi) final  TransactionEnvelopeTransactionTypeEnum? type;
@override@JsonKey(name: "description", required: false, includeIfNull: false) final  String? description;
@override@JsonKey(name: "createdAt", required: false, includeIfNull: false) final  DateTime? createdAt;

/// Create a copy of TransactionEnvelopeTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionEnvelopeTransactionCopyWith<_TransactionEnvelopeTransaction> get copyWith => __$TransactionEnvelopeTransactionCopyWithImpl<_TransactionEnvelopeTransaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionEnvelopeTransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionEnvelopeTransaction&&(identical(other.id, id) || other.id == id)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,accountId,amount,currency,type,description,createdAt);

@override
String toString() {
  return 'TransactionEnvelopeTransaction(id: $id, accountId: $accountId, amount: $amount, currency: $currency, type: $type, description: $description, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$TransactionEnvelopeTransactionCopyWith<$Res> implements $TransactionEnvelopeTransactionCopyWith<$Res> {
  factory _$TransactionEnvelopeTransactionCopyWith(_TransactionEnvelopeTransaction value, $Res Function(_TransactionEnvelopeTransaction) _then) = __$TransactionEnvelopeTransactionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id", required: false, includeIfNull: false) String? id,@JsonKey(name: "accountId", required: false, includeIfNull: false) String? accountId,@JsonKey(name: "amount", required: false, includeIfNull: false) String? amount,@JsonKey(name: "currency", required: false, includeIfNull: false) String? currency,@JsonKey(name: "type", required: false, includeIfNull: false, unknownEnumValue: TransactionEnvelopeTransactionTypeEnum.unknownDefaultOpenApi) TransactionEnvelopeTransactionTypeEnum? type,@JsonKey(name: "description", required: false, includeIfNull: false) String? description,@JsonKey(name: "createdAt", required: false, includeIfNull: false) DateTime? createdAt
});




}
/// @nodoc
class __$TransactionEnvelopeTransactionCopyWithImpl<$Res>
    implements _$TransactionEnvelopeTransactionCopyWith<$Res> {
  __$TransactionEnvelopeTransactionCopyWithImpl(this._self, this._then);

  final _TransactionEnvelopeTransaction _self;
  final $Res Function(_TransactionEnvelopeTransaction) _then;

/// Create a copy of TransactionEnvelopeTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? accountId = freezed,Object? amount = freezed,Object? currency = freezed,Object? type = freezed,Object? description = freezed,Object? createdAt = freezed,}) {
  return _then(_TransactionEnvelopeTransaction(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionEnvelopeTransactionTypeEnum?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
