// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'created_teacher_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatedTeacherResponse {

 String get message;
/// Create a copy of CreatedTeacherResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatedTeacherResponseCopyWith<CreatedTeacherResponse> get copyWith => _$CreatedTeacherResponseCopyWithImpl<CreatedTeacherResponse>(this as CreatedTeacherResponse, _$identity);

  /// Serializes this CreatedTeacherResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatedTeacherResponse&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CreatedTeacherResponse(message: $message)';
}


}

/// @nodoc
abstract mixin class $CreatedTeacherResponseCopyWith<$Res>  {
  factory $CreatedTeacherResponseCopyWith(CreatedTeacherResponse value, $Res Function(CreatedTeacherResponse) _then) = _$CreatedTeacherResponseCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CreatedTeacherResponseCopyWithImpl<$Res>
    implements $CreatedTeacherResponseCopyWith<$Res> {
  _$CreatedTeacherResponseCopyWithImpl(this._self, this._then);

  final CreatedTeacherResponse _self;
  final $Res Function(CreatedTeacherResponse) _then;

/// Create a copy of CreatedTeacherResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatedTeacherResponse].
extension CreatedTeacherResponsePatterns on CreatedTeacherResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatedTeacherResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatedTeacherResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatedTeacherResponse value)  $default,){
final _that = this;
switch (_that) {
case _CreatedTeacherResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatedTeacherResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CreatedTeacherResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatedTeacherResponse() when $default != null:
return $default(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message)  $default,) {final _that = this;
switch (_that) {
case _CreatedTeacherResponse():
return $default(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message)?  $default,) {final _that = this;
switch (_that) {
case _CreatedTeacherResponse() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatedTeacherResponse implements CreatedTeacherResponse {
  const _CreatedTeacherResponse({required this.message});
  factory _CreatedTeacherResponse.fromJson(Map<String, dynamic> json) => _$CreatedTeacherResponseFromJson(json);

@override final  String message;

/// Create a copy of CreatedTeacherResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatedTeacherResponseCopyWith<_CreatedTeacherResponse> get copyWith => __$CreatedTeacherResponseCopyWithImpl<_CreatedTeacherResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatedTeacherResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatedTeacherResponse&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CreatedTeacherResponse(message: $message)';
}


}

/// @nodoc
abstract mixin class _$CreatedTeacherResponseCopyWith<$Res> implements $CreatedTeacherResponseCopyWith<$Res> {
  factory _$CreatedTeacherResponseCopyWith(_CreatedTeacherResponse value, $Res Function(_CreatedTeacherResponse) _then) = __$CreatedTeacherResponseCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$CreatedTeacherResponseCopyWithImpl<$Res>
    implements _$CreatedTeacherResponseCopyWith<$Res> {
  __$CreatedTeacherResponseCopyWithImpl(this._self, this._then);

  final _CreatedTeacherResponse _self;
  final $Res Function(_CreatedTeacherResponse) _then;

/// Create a copy of CreatedTeacherResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_CreatedTeacherResponse(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
