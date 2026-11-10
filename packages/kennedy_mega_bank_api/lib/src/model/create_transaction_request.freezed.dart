// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_transaction_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateTransactionRequest {

@JsonKey(name: "accountId", required: true, includeIfNull: false) String get accountId;@JsonKey(name: "amount", required: true, includeIfNull: true) Object? get amount;@JsonKey(name: "type", required: true, includeIfNull: false, unknownEnumValue: CreateTransactionRequestTypeEnum.unknownDefaultOpenApi) CreateTransactionRequestTypeEnum get type;@JsonKey(name: "description", required: false, includeIfNull: false) String? get description;
/// Create a copy of CreateTransactionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTransactionRequestCopyWith<CreateTransactionRequest> get copyWith => _$CreateTransactionRequestCopyWithImpl<CreateTransactionRequest>(this as CreateTransactionRequest, _$identity);

  /// Serializes this CreateTransactionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTransactionRequest&&(identical(other.accountId, accountId) || other.accountId == accountId)&&const DeepCollectionEquality().equals(other.amount, amount)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountId,const DeepCollectionEquality().hash(amount),type,description);

@override
String toString() {
  return 'CreateTransactionRequest(accountId: $accountId, amount: $amount, type: $type, description: $description)';
}


}

/// @nodoc
abstract mixin class $CreateTransactionRequestCopyWith<$Res>  {
  factory $CreateTransactionRequestCopyWith(CreateTransactionRequest value, $Res Function(CreateTransactionRequest) _then) = _$CreateTransactionRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "accountId", required: true, includeIfNull: false) String accountId,@JsonKey(name: "amount", required: true, includeIfNull: true) Object? amount,@JsonKey(name: "type", required: true, includeIfNull: false, unknownEnumValue: CreateTransactionRequestTypeEnum.unknownDefaultOpenApi) CreateTransactionRequestTypeEnum type,@JsonKey(name: "description", required: false, includeIfNull: false) String? description
});




}
/// @nodoc
class _$CreateTransactionRequestCopyWithImpl<$Res>
    implements $CreateTransactionRequestCopyWith<$Res> {
  _$CreateTransactionRequestCopyWithImpl(this._self, this._then);

  final CreateTransactionRequest _self;
  final $Res Function(CreateTransactionRequest) _then;

/// Create a copy of CreateTransactionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accountId = null,Object? amount = freezed,Object? type = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,amount: freezed == amount ? _self.amount : amount ,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CreateTransactionRequestTypeEnum,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateTransactionRequest].
extension CreateTransactionRequestPatterns on CreateTransactionRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateTransactionRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTransactionRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateTransactionRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateTransactionRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateTransactionRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateTransactionRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "accountId", required: true, includeIfNull: false)  String accountId, @JsonKey(name: "amount", required: true, includeIfNull: true)  Object? amount, @JsonKey(name: "type", required: true, includeIfNull: false, unknownEnumValue: CreateTransactionRequestTypeEnum.unknownDefaultOpenApi)  CreateTransactionRequestTypeEnum type, @JsonKey(name: "description", required: false, includeIfNull: false)  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTransactionRequest() when $default != null:
return $default(_that.accountId,_that.amount,_that.type,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "accountId", required: true, includeIfNull: false)  String accountId, @JsonKey(name: "amount", required: true, includeIfNull: true)  Object? amount, @JsonKey(name: "type", required: true, includeIfNull: false, unknownEnumValue: CreateTransactionRequestTypeEnum.unknownDefaultOpenApi)  CreateTransactionRequestTypeEnum type, @JsonKey(name: "description", required: false, includeIfNull: false)  String? description)  $default,) {final _that = this;
switch (_that) {
case _CreateTransactionRequest():
return $default(_that.accountId,_that.amount,_that.type,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "accountId", required: true, includeIfNull: false)  String accountId, @JsonKey(name: "amount", required: true, includeIfNull: true)  Object? amount, @JsonKey(name: "type", required: true, includeIfNull: false, unknownEnumValue: CreateTransactionRequestTypeEnum.unknownDefaultOpenApi)  CreateTransactionRequestTypeEnum type, @JsonKey(name: "description", required: false, includeIfNull: false)  String? description)?  $default,) {final _that = this;
switch (_that) {
case _CreateTransactionRequest() when $default != null:
return $default(_that.accountId,_that.amount,_that.type,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateTransactionRequest implements CreateTransactionRequest {
  const _CreateTransactionRequest({@JsonKey(name: "accountId", required: true, includeIfNull: false) required this.accountId, @JsonKey(name: "amount", required: true, includeIfNull: true) required this.amount, @JsonKey(name: "type", required: true, includeIfNull: false, unknownEnumValue: CreateTransactionRequestTypeEnum.unknownDefaultOpenApi) required this.type, @JsonKey(name: "description", required: false, includeIfNull: false) this.description});
  factory _CreateTransactionRequest.fromJson(Map<String, dynamic> json) => _$CreateTransactionRequestFromJson(json);

@override@JsonKey(name: "accountId", required: true, includeIfNull: false) final  String accountId;
@override@JsonKey(name: "amount", required: true, includeIfNull: true) final  Object? amount;
@override@JsonKey(name: "type", required: true, includeIfNull: false, unknownEnumValue: CreateTransactionRequestTypeEnum.unknownDefaultOpenApi) final  CreateTransactionRequestTypeEnum type;
@override@JsonKey(name: "description", required: false, includeIfNull: false) final  String? description;

/// Create a copy of CreateTransactionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTransactionRequestCopyWith<_CreateTransactionRequest> get copyWith => __$CreateTransactionRequestCopyWithImpl<_CreateTransactionRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateTransactionRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTransactionRequest&&(identical(other.accountId, accountId) || other.accountId == accountId)&&const DeepCollectionEquality().equals(other.amount, amount)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountId,const DeepCollectionEquality().hash(amount),type,description);

@override
String toString() {
  return 'CreateTransactionRequest(accountId: $accountId, amount: $amount, type: $type, description: $description)';
}


}

/// @nodoc
abstract mixin class _$CreateTransactionRequestCopyWith<$Res> implements $CreateTransactionRequestCopyWith<$Res> {
  factory _$CreateTransactionRequestCopyWith(_CreateTransactionRequest value, $Res Function(_CreateTransactionRequest) _then) = __$CreateTransactionRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "accountId", required: true, includeIfNull: false) String accountId,@JsonKey(name: "amount", required: true, includeIfNull: true) Object? amount,@JsonKey(name: "type", required: true, includeIfNull: false, unknownEnumValue: CreateTransactionRequestTypeEnum.unknownDefaultOpenApi) CreateTransactionRequestTypeEnum type,@JsonKey(name: "description", required: false, includeIfNull: false) String? description
});




}
/// @nodoc
class __$CreateTransactionRequestCopyWithImpl<$Res>
    implements _$CreateTransactionRequestCopyWith<$Res> {
  __$CreateTransactionRequestCopyWithImpl(this._self, this._then);

  final _CreateTransactionRequest _self;
  final $Res Function(_CreateTransactionRequest) _then;

/// Create a copy of CreateTransactionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountId = null,Object? amount = freezed,Object? type = null,Object? description = freezed,}) {
  return _then(_CreateTransactionRequest(
accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,amount: freezed == amount ? _self.amount : amount ,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CreateTransactionRequestTypeEnum,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
