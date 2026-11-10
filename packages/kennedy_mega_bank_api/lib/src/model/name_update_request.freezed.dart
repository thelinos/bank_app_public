// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'name_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NameUpdateRequest {

@JsonKey(name: "firstName", required: false, includeIfNull: false) String? get firstName;@JsonKey(name: "middleName", required: false, includeIfNull: false) String? get middleName;@JsonKey(name: "surname", required: false, includeIfNull: false) String? get surname;
/// Create a copy of NameUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NameUpdateRequestCopyWith<NameUpdateRequest> get copyWith => _$NameUpdateRequestCopyWithImpl<NameUpdateRequest>(this as NameUpdateRequest, _$identity);

  /// Serializes this NameUpdateRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NameUpdateRequest&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.surname, surname) || other.surname == surname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,middleName,surname);

@override
String toString() {
  return 'NameUpdateRequest(firstName: $firstName, middleName: $middleName, surname: $surname)';
}


}

/// @nodoc
abstract mixin class $NameUpdateRequestCopyWith<$Res>  {
  factory $NameUpdateRequestCopyWith(NameUpdateRequest value, $Res Function(NameUpdateRequest) _then) = _$NameUpdateRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "firstName", required: false, includeIfNull: false) String? firstName,@JsonKey(name: "middleName", required: false, includeIfNull: false) String? middleName,@JsonKey(name: "surname", required: false, includeIfNull: false) String? surname
});




}
/// @nodoc
class _$NameUpdateRequestCopyWithImpl<$Res>
    implements $NameUpdateRequestCopyWith<$Res> {
  _$NameUpdateRequestCopyWithImpl(this._self, this._then);

  final NameUpdateRequest _self;
  final $Res Function(NameUpdateRequest) _then;

/// Create a copy of NameUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? middleName = freezed,Object? surname = freezed,}) {
  return _then(_self.copyWith(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,surname: freezed == surname ? _self.surname : surname // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NameUpdateRequest].
extension NameUpdateRequestPatterns on NameUpdateRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NameUpdateRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NameUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NameUpdateRequest value)  $default,){
final _that = this;
switch (_that) {
case _NameUpdateRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NameUpdateRequest value)?  $default,){
final _that = this;
switch (_that) {
case _NameUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "firstName", required: false, includeIfNull: false)  String? firstName, @JsonKey(name: "middleName", required: false, includeIfNull: false)  String? middleName, @JsonKey(name: "surname", required: false, includeIfNull: false)  String? surname)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NameUpdateRequest() when $default != null:
return $default(_that.firstName,_that.middleName,_that.surname);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "firstName", required: false, includeIfNull: false)  String? firstName, @JsonKey(name: "middleName", required: false, includeIfNull: false)  String? middleName, @JsonKey(name: "surname", required: false, includeIfNull: false)  String? surname)  $default,) {final _that = this;
switch (_that) {
case _NameUpdateRequest():
return $default(_that.firstName,_that.middleName,_that.surname);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "firstName", required: false, includeIfNull: false)  String? firstName, @JsonKey(name: "middleName", required: false, includeIfNull: false)  String? middleName, @JsonKey(name: "surname", required: false, includeIfNull: false)  String? surname)?  $default,) {final _that = this;
switch (_that) {
case _NameUpdateRequest() when $default != null:
return $default(_that.firstName,_that.middleName,_that.surname);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NameUpdateRequest implements NameUpdateRequest {
  const _NameUpdateRequest({@JsonKey(name: "firstName", required: false, includeIfNull: false) this.firstName, @JsonKey(name: "middleName", required: false, includeIfNull: false) this.middleName, @JsonKey(name: "surname", required: false, includeIfNull: false) this.surname});
  factory _NameUpdateRequest.fromJson(Map<String, dynamic> json) => _$NameUpdateRequestFromJson(json);

@override@JsonKey(name: "firstName", required: false, includeIfNull: false) final  String? firstName;
@override@JsonKey(name: "middleName", required: false, includeIfNull: false) final  String? middleName;
@override@JsonKey(name: "surname", required: false, includeIfNull: false) final  String? surname;

/// Create a copy of NameUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NameUpdateRequestCopyWith<_NameUpdateRequest> get copyWith => __$NameUpdateRequestCopyWithImpl<_NameUpdateRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NameUpdateRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NameUpdateRequest&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.surname, surname) || other.surname == surname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,middleName,surname);

@override
String toString() {
  return 'NameUpdateRequest(firstName: $firstName, middleName: $middleName, surname: $surname)';
}


}

/// @nodoc
abstract mixin class _$NameUpdateRequestCopyWith<$Res> implements $NameUpdateRequestCopyWith<$Res> {
  factory _$NameUpdateRequestCopyWith(_NameUpdateRequest value, $Res Function(_NameUpdateRequest) _then) = __$NameUpdateRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "firstName", required: false, includeIfNull: false) String? firstName,@JsonKey(name: "middleName", required: false, includeIfNull: false) String? middleName,@JsonKey(name: "surname", required: false, includeIfNull: false) String? surname
});




}
/// @nodoc
class __$NameUpdateRequestCopyWithImpl<$Res>
    implements _$NameUpdateRequestCopyWith<$Res> {
  __$NameUpdateRequestCopyWithImpl(this._self, this._then);

  final _NameUpdateRequest _self;
  final $Res Function(_NameUpdateRequest) _then;

/// Create a copy of NameUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? middleName = freezed,Object? surname = freezed,}) {
  return _then(_NameUpdateRequest(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,surname: freezed == surname ? _self.surname : surname // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
