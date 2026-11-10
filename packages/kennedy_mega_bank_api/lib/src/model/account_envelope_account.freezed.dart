// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_envelope_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountEnvelopeAccount {

@JsonKey(name: "id", required: false, includeIfNull: false) String? get id;@JsonKey(name: "userId", required: false, includeIfNull: false) String? get userId;@JsonKey(name: "accountType", required: false, includeIfNull: false, unknownEnumValue: AccountEnvelopeAccountAccountTypeEnum.unknownDefaultOpenApi) AccountEnvelopeAccountAccountTypeEnum? get accountType;@JsonKey(name: "balance", required: false, includeIfNull: false) String? get balance;@JsonKey(name: "currency", required: false, includeIfNull: false) String? get currency;@JsonKey(name: "createdAt", required: false, includeIfNull: false) DateTime? get createdAt;@JsonKey(name: "updatedAt", required: false, includeIfNull: false) DateTime? get updatedAt;
/// Create a copy of AccountEnvelopeAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountEnvelopeAccountCopyWith<AccountEnvelopeAccount> get copyWith => _$AccountEnvelopeAccountCopyWithImpl<AccountEnvelopeAccount>(this as AccountEnvelopeAccount, _$identity);

  /// Serializes this AccountEnvelopeAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountEnvelopeAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.accountType, accountType) || other.accountType == accountType)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,accountType,balance,currency,createdAt,updatedAt);

@override
String toString() {
  return 'AccountEnvelopeAccount(id: $id, userId: $userId, accountType: $accountType, balance: $balance, currency: $currency, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $AccountEnvelopeAccountCopyWith<$Res>  {
  factory $AccountEnvelopeAccountCopyWith(AccountEnvelopeAccount value, $Res Function(AccountEnvelopeAccount) _then) = _$AccountEnvelopeAccountCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id", required: false, includeIfNull: false) String? id,@JsonKey(name: "userId", required: false, includeIfNull: false) String? userId,@JsonKey(name: "accountType", required: false, includeIfNull: false, unknownEnumValue: AccountEnvelopeAccountAccountTypeEnum.unknownDefaultOpenApi) AccountEnvelopeAccountAccountTypeEnum? accountType,@JsonKey(name: "balance", required: false, includeIfNull: false) String? balance,@JsonKey(name: "currency", required: false, includeIfNull: false) String? currency,@JsonKey(name: "createdAt", required: false, includeIfNull: false) DateTime? createdAt,@JsonKey(name: "updatedAt", required: false, includeIfNull: false) DateTime? updatedAt
});




}
/// @nodoc
class _$AccountEnvelopeAccountCopyWithImpl<$Res>
    implements $AccountEnvelopeAccountCopyWith<$Res> {
  _$AccountEnvelopeAccountCopyWithImpl(this._self, this._then);

  final AccountEnvelopeAccount _self;
  final $Res Function(AccountEnvelopeAccount) _then;

/// Create a copy of AccountEnvelopeAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = freezed,Object? accountType = freezed,Object? balance = freezed,Object? currency = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,accountType: freezed == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as AccountEnvelopeAccountAccountTypeEnum?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountEnvelopeAccount].
extension AccountEnvelopeAccountPatterns on AccountEnvelopeAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountEnvelopeAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountEnvelopeAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountEnvelopeAccount value)  $default,){
final _that = this;
switch (_that) {
case _AccountEnvelopeAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountEnvelopeAccount value)?  $default,){
final _that = this;
switch (_that) {
case _AccountEnvelopeAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id", required: false, includeIfNull: false)  String? id, @JsonKey(name: "userId", required: false, includeIfNull: false)  String? userId, @JsonKey(name: "accountType", required: false, includeIfNull: false, unknownEnumValue: AccountEnvelopeAccountAccountTypeEnum.unknownDefaultOpenApi)  AccountEnvelopeAccountAccountTypeEnum? accountType, @JsonKey(name: "balance", required: false, includeIfNull: false)  String? balance, @JsonKey(name: "currency", required: false, includeIfNull: false)  String? currency, @JsonKey(name: "createdAt", required: false, includeIfNull: false)  DateTime? createdAt, @JsonKey(name: "updatedAt", required: false, includeIfNull: false)  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountEnvelopeAccount() when $default != null:
return $default(_that.id,_that.userId,_that.accountType,_that.balance,_that.currency,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id", required: false, includeIfNull: false)  String? id, @JsonKey(name: "userId", required: false, includeIfNull: false)  String? userId, @JsonKey(name: "accountType", required: false, includeIfNull: false, unknownEnumValue: AccountEnvelopeAccountAccountTypeEnum.unknownDefaultOpenApi)  AccountEnvelopeAccountAccountTypeEnum? accountType, @JsonKey(name: "balance", required: false, includeIfNull: false)  String? balance, @JsonKey(name: "currency", required: false, includeIfNull: false)  String? currency, @JsonKey(name: "createdAt", required: false, includeIfNull: false)  DateTime? createdAt, @JsonKey(name: "updatedAt", required: false, includeIfNull: false)  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _AccountEnvelopeAccount():
return $default(_that.id,_that.userId,_that.accountType,_that.balance,_that.currency,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id", required: false, includeIfNull: false)  String? id, @JsonKey(name: "userId", required: false, includeIfNull: false)  String? userId, @JsonKey(name: "accountType", required: false, includeIfNull: false, unknownEnumValue: AccountEnvelopeAccountAccountTypeEnum.unknownDefaultOpenApi)  AccountEnvelopeAccountAccountTypeEnum? accountType, @JsonKey(name: "balance", required: false, includeIfNull: false)  String? balance, @JsonKey(name: "currency", required: false, includeIfNull: false)  String? currency, @JsonKey(name: "createdAt", required: false, includeIfNull: false)  DateTime? createdAt, @JsonKey(name: "updatedAt", required: false, includeIfNull: false)  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _AccountEnvelopeAccount() when $default != null:
return $default(_that.id,_that.userId,_that.accountType,_that.balance,_that.currency,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountEnvelopeAccount implements AccountEnvelopeAccount {
  const _AccountEnvelopeAccount({@JsonKey(name: "id", required: false, includeIfNull: false) this.id, @JsonKey(name: "userId", required: false, includeIfNull: false) this.userId, @JsonKey(name: "accountType", required: false, includeIfNull: false, unknownEnumValue: AccountEnvelopeAccountAccountTypeEnum.unknownDefaultOpenApi) this.accountType, @JsonKey(name: "balance", required: false, includeIfNull: false) this.balance, @JsonKey(name: "currency", required: false, includeIfNull: false) this.currency, @JsonKey(name: "createdAt", required: false, includeIfNull: false) this.createdAt, @JsonKey(name: "updatedAt", required: false, includeIfNull: false) this.updatedAt});
  factory _AccountEnvelopeAccount.fromJson(Map<String, dynamic> json) => _$AccountEnvelopeAccountFromJson(json);

@override@JsonKey(name: "id", required: false, includeIfNull: false) final  String? id;
@override@JsonKey(name: "userId", required: false, includeIfNull: false) final  String? userId;
@override@JsonKey(name: "accountType", required: false, includeIfNull: false, unknownEnumValue: AccountEnvelopeAccountAccountTypeEnum.unknownDefaultOpenApi) final  AccountEnvelopeAccountAccountTypeEnum? accountType;
@override@JsonKey(name: "balance", required: false, includeIfNull: false) final  String? balance;
@override@JsonKey(name: "currency", required: false, includeIfNull: false) final  String? currency;
@override@JsonKey(name: "createdAt", required: false, includeIfNull: false) final  DateTime? createdAt;
@override@JsonKey(name: "updatedAt", required: false, includeIfNull: false) final  DateTime? updatedAt;

/// Create a copy of AccountEnvelopeAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountEnvelopeAccountCopyWith<_AccountEnvelopeAccount> get copyWith => __$AccountEnvelopeAccountCopyWithImpl<_AccountEnvelopeAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountEnvelopeAccountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountEnvelopeAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.accountType, accountType) || other.accountType == accountType)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,accountType,balance,currency,createdAt,updatedAt);

@override
String toString() {
  return 'AccountEnvelopeAccount(id: $id, userId: $userId, accountType: $accountType, balance: $balance, currency: $currency, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$AccountEnvelopeAccountCopyWith<$Res> implements $AccountEnvelopeAccountCopyWith<$Res> {
  factory _$AccountEnvelopeAccountCopyWith(_AccountEnvelopeAccount value, $Res Function(_AccountEnvelopeAccount) _then) = __$AccountEnvelopeAccountCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id", required: false, includeIfNull: false) String? id,@JsonKey(name: "userId", required: false, includeIfNull: false) String? userId,@JsonKey(name: "accountType", required: false, includeIfNull: false, unknownEnumValue: AccountEnvelopeAccountAccountTypeEnum.unknownDefaultOpenApi) AccountEnvelopeAccountAccountTypeEnum? accountType,@JsonKey(name: "balance", required: false, includeIfNull: false) String? balance,@JsonKey(name: "currency", required: false, includeIfNull: false) String? currency,@JsonKey(name: "createdAt", required: false, includeIfNull: false) DateTime? createdAt,@JsonKey(name: "updatedAt", required: false, includeIfNull: false) DateTime? updatedAt
});




}
/// @nodoc
class __$AccountEnvelopeAccountCopyWithImpl<$Res>
    implements _$AccountEnvelopeAccountCopyWith<$Res> {
  __$AccountEnvelopeAccountCopyWithImpl(this._self, this._then);

  final _AccountEnvelopeAccount _self;
  final $Res Function(_AccountEnvelopeAccount) _then;

/// Create a copy of AccountEnvelopeAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = freezed,Object? accountType = freezed,Object? balance = freezed,Object? currency = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_AccountEnvelopeAccount(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,accountType: freezed == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as AccountEnvelopeAccountAccountTypeEnum?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
