// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'name_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NameRequest {

@JsonKey(name: "firstName", required: true, includeIfNull: false) String get firstName;@JsonKey(name: "surname", required: true, includeIfNull: false) String get surname;@JsonKey(name: "middleName", required: false, includeIfNull: false) String? get middleName;
/// Create a copy of NameRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NameRequestCopyWith<NameRequest> get copyWith => _$NameRequestCopyWithImpl<NameRequest>(this as NameRequest, _$identity);

  /// Serializes this NameRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NameRequest&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.surname, surname) || other.surname == surname)&&(identical(other.middleName, middleName) || other.middleName == middleName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,surname,middleName);

@override
String toString() {
  return 'NameRequest(firstName: $firstName, surname: $surname, middleName: $middleName)';
}


}

/// @nodoc
abstract mixin class $NameRequestCopyWith<$Res>  {
  factory $NameRequestCopyWith(NameRequest value, $Res Function(NameRequest) _then) = _$NameRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "firstName", required: true, includeIfNull: false) String firstName,@JsonKey(name: "surname", required: true, includeIfNull: false) String surname,@JsonKey(name: "middleName", required: false, includeIfNull: false) String? middleName
});




}
/// @nodoc
class _$NameRequestCopyWithImpl<$Res>
    implements $NameRequestCopyWith<$Res> {
  _$NameRequestCopyWithImpl(this._self, this._then);

  final NameRequest _self;
  final $Res Function(NameRequest) _then;

/// Create a copy of NameRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? surname = null,Object? middleName = freezed,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,surname: null == surname ? _self.surname : surname // ignore: cast_nullable_to_non_nullable
as String,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NameRequest].
extension NameRequestPatterns on NameRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NameRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NameRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NameRequest value)  $default,){
final _that = this;
switch (_that) {
case _NameRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NameRequest value)?  $default,){
final _that = this;
switch (_that) {
case _NameRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "firstName", required: true, includeIfNull: false)  String firstName, @JsonKey(name: "surname", required: true, includeIfNull: false)  String surname, @JsonKey(name: "middleName", required: false, includeIfNull: false)  String? middleName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NameRequest() when $default != null:
return $default(_that.firstName,_that.surname,_that.middleName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "firstName", required: true, includeIfNull: false)  String firstName, @JsonKey(name: "surname", required: true, includeIfNull: false)  String surname, @JsonKey(name: "middleName", required: false, includeIfNull: false)  String? middleName)  $default,) {final _that = this;
switch (_that) {
case _NameRequest():
return $default(_that.firstName,_that.surname,_that.middleName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "firstName", required: true, includeIfNull: false)  String firstName, @JsonKey(name: "surname", required: true, includeIfNull: false)  String surname, @JsonKey(name: "middleName", required: false, includeIfNull: false)  String? middleName)?  $default,) {final _that = this;
switch (_that) {
case _NameRequest() when $default != null:
return $default(_that.firstName,_that.surname,_that.middleName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NameRequest implements NameRequest {
  const _NameRequest({@JsonKey(name: "firstName", required: true, includeIfNull: false) required this.firstName, @JsonKey(name: "surname", required: true, includeIfNull: false) required this.surname, @JsonKey(name: "middleName", required: false, includeIfNull: false) this.middleName});
  factory _NameRequest.fromJson(Map<String, dynamic> json) => _$NameRequestFromJson(json);

@override@JsonKey(name: "firstName", required: true, includeIfNull: false) final  String firstName;
@override@JsonKey(name: "surname", required: true, includeIfNull: false) final  String surname;
@override@JsonKey(name: "middleName", required: false, includeIfNull: false) final  String? middleName;

/// Create a copy of NameRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NameRequestCopyWith<_NameRequest> get copyWith => __$NameRequestCopyWithImpl<_NameRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NameRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NameRequest&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.surname, surname) || other.surname == surname)&&(identical(other.middleName, middleName) || other.middleName == middleName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,surname,middleName);

@override
String toString() {
  return 'NameRequest(firstName: $firstName, surname: $surname, middleName: $middleName)';
}


}

/// @nodoc
abstract mixin class _$NameRequestCopyWith<$Res> implements $NameRequestCopyWith<$Res> {
  factory _$NameRequestCopyWith(_NameRequest value, $Res Function(_NameRequest) _then) = __$NameRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "firstName", required: true, includeIfNull: false) String firstName,@JsonKey(name: "surname", required: true, includeIfNull: false) String surname,@JsonKey(name: "middleName", required: false, includeIfNull: false) String? middleName
});




}
/// @nodoc
class __$NameRequestCopyWithImpl<$Res>
    implements _$NameRequestCopyWith<$Res> {
  __$NameRequestCopyWithImpl(this._self, this._then);

  final _NameRequest _self;
  final $Res Function(_NameRequest) _then;

/// Create a copy of NameRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? surname = null,Object? middleName = freezed,}) {
  return _then(_NameRequest(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,surname: null == surname ? _self.surname : surname // ignore: cast_nullable_to_non_nullable
as String,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
