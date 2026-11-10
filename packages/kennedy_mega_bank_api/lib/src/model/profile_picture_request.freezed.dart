// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_picture_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfilePictureRequest {

@JsonKey(name: "profilePicture", required: true, includeIfNull: false) String get profilePicture;
/// Create a copy of ProfilePictureRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfilePictureRequestCopyWith<ProfilePictureRequest> get copyWith => _$ProfilePictureRequestCopyWithImpl<ProfilePictureRequest>(this as ProfilePictureRequest, _$identity);

  /// Serializes this ProfilePictureRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilePictureRequest&&(identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profilePicture);

@override
String toString() {
  return 'ProfilePictureRequest(profilePicture: $profilePicture)';
}


}

/// @nodoc
abstract mixin class $ProfilePictureRequestCopyWith<$Res>  {
  factory $ProfilePictureRequestCopyWith(ProfilePictureRequest value, $Res Function(ProfilePictureRequest) _then) = _$ProfilePictureRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "profilePicture", required: true, includeIfNull: false) String profilePicture
});




}
/// @nodoc
class _$ProfilePictureRequestCopyWithImpl<$Res>
    implements $ProfilePictureRequestCopyWith<$Res> {
  _$ProfilePictureRequestCopyWithImpl(this._self, this._then);

  final ProfilePictureRequest _self;
  final $Res Function(ProfilePictureRequest) _then;

/// Create a copy of ProfilePictureRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profilePicture = null,}) {
  return _then(_self.copyWith(
profilePicture: null == profilePicture ? _self.profilePicture : profilePicture // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfilePictureRequest].
extension ProfilePictureRequestPatterns on ProfilePictureRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfilePictureRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfilePictureRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfilePictureRequest value)  $default,){
final _that = this;
switch (_that) {
case _ProfilePictureRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfilePictureRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ProfilePictureRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "profilePicture", required: true, includeIfNull: false)  String profilePicture)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfilePictureRequest() when $default != null:
return $default(_that.profilePicture);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "profilePicture", required: true, includeIfNull: false)  String profilePicture)  $default,) {final _that = this;
switch (_that) {
case _ProfilePictureRequest():
return $default(_that.profilePicture);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "profilePicture", required: true, includeIfNull: false)  String profilePicture)?  $default,) {final _that = this;
switch (_that) {
case _ProfilePictureRequest() when $default != null:
return $default(_that.profilePicture);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfilePictureRequest implements ProfilePictureRequest {
  const _ProfilePictureRequest({@JsonKey(name: "profilePicture", required: true, includeIfNull: false) required this.profilePicture});
  factory _ProfilePictureRequest.fromJson(Map<String, dynamic> json) => _$ProfilePictureRequestFromJson(json);

@override@JsonKey(name: "profilePicture", required: true, includeIfNull: false) final  String profilePicture;

/// Create a copy of ProfilePictureRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfilePictureRequestCopyWith<_ProfilePictureRequest> get copyWith => __$ProfilePictureRequestCopyWithImpl<_ProfilePictureRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfilePictureRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfilePictureRequest&&(identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profilePicture);

@override
String toString() {
  return 'ProfilePictureRequest(profilePicture: $profilePicture)';
}


}

/// @nodoc
abstract mixin class _$ProfilePictureRequestCopyWith<$Res> implements $ProfilePictureRequestCopyWith<$Res> {
  factory _$ProfilePictureRequestCopyWith(_ProfilePictureRequest value, $Res Function(_ProfilePictureRequest) _then) = __$ProfilePictureRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "profilePicture", required: true, includeIfNull: false) String profilePicture
});




}
/// @nodoc
class __$ProfilePictureRequestCopyWithImpl<$Res>
    implements _$ProfilePictureRequestCopyWith<$Res> {
  __$ProfilePictureRequestCopyWithImpl(this._self, this._then);

  final _ProfilePictureRequest _self;
  final $Res Function(_ProfilePictureRequest) _then;

/// Create a copy of ProfilePictureRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profilePicture = null,}) {
  return _then(_ProfilePictureRequest(
profilePicture: null == profilePicture ? _self.profilePicture : profilePicture // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
