// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accept_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AcceptRequestModel {

 String get message;
/// Create a copy of AcceptRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcceptRequestModelCopyWith<AcceptRequestModel> get copyWith => _$AcceptRequestModelCopyWithImpl<AcceptRequestModel>(this as AcceptRequestModel, _$identity);

  /// Serializes this AcceptRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptRequestModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AcceptRequestModel(message: $message)';
}


}

/// @nodoc
abstract mixin class $AcceptRequestModelCopyWith<$Res>  {
  factory $AcceptRequestModelCopyWith(AcceptRequestModel value, $Res Function(AcceptRequestModel) _then) = _$AcceptRequestModelCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AcceptRequestModelCopyWithImpl<$Res>
    implements $AcceptRequestModelCopyWith<$Res> {
  _$AcceptRequestModelCopyWithImpl(this._self, this._then);

  final AcceptRequestModel _self;
  final $Res Function(AcceptRequestModel) _then;

/// Create a copy of AcceptRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AcceptRequestModel].
extension AcceptRequestModelPatterns on AcceptRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcceptRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcceptRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcceptRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _AcceptRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcceptRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _AcceptRequestModel() when $default != null:
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
case _AcceptRequestModel() when $default != null:
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
case _AcceptRequestModel():
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
case _AcceptRequestModel() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcceptRequestModel implements AcceptRequestModel {
  const _AcceptRequestModel({required this.message});
  factory _AcceptRequestModel.fromJson(Map<String, dynamic> json) => _$AcceptRequestModelFromJson(json);

@override final  String message;

/// Create a copy of AcceptRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcceptRequestModelCopyWith<_AcceptRequestModel> get copyWith => __$AcceptRequestModelCopyWithImpl<_AcceptRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcceptRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcceptRequestModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AcceptRequestModel(message: $message)';
}


}

/// @nodoc
abstract mixin class _$AcceptRequestModelCopyWith<$Res> implements $AcceptRequestModelCopyWith<$Res> {
  factory _$AcceptRequestModelCopyWith(_AcceptRequestModel value, $Res Function(_AcceptRequestModel) _then) = __$AcceptRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$AcceptRequestModelCopyWithImpl<$Res>
    implements _$AcceptRequestModelCopyWith<$Res> {
  __$AcceptRequestModelCopyWithImpl(this._self, this._then);

  final _AcceptRequestModel _self;
  final $Res Function(_AcceptRequestModel) _then;

/// Create a copy of AcceptRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_AcceptRequestModel(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
