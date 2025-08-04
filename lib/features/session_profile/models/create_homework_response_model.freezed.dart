// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_homework_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateHomeworkResponseModel {

 String get message;
/// Create a copy of CreateHomeworkResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateHomeworkResponseModelCopyWith<CreateHomeworkResponseModel> get copyWith => _$CreateHomeworkResponseModelCopyWithImpl<CreateHomeworkResponseModel>(this as CreateHomeworkResponseModel, _$identity);

  /// Serializes this CreateHomeworkResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateHomeworkResponseModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CreateHomeworkResponseModel(message: $message)';
}


}

/// @nodoc
abstract mixin class $CreateHomeworkResponseModelCopyWith<$Res>  {
  factory $CreateHomeworkResponseModelCopyWith(CreateHomeworkResponseModel value, $Res Function(CreateHomeworkResponseModel) _then) = _$CreateHomeworkResponseModelCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CreateHomeworkResponseModelCopyWithImpl<$Res>
    implements $CreateHomeworkResponseModelCopyWith<$Res> {
  _$CreateHomeworkResponseModelCopyWithImpl(this._self, this._then);

  final CreateHomeworkResponseModel _self;
  final $Res Function(CreateHomeworkResponseModel) _then;

/// Create a copy of CreateHomeworkResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateHomeworkResponseModel].
extension CreateHomeworkResponseModelPatterns on CreateHomeworkResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateHomeworkResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateHomeworkResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateHomeworkResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateHomeworkResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateHomeworkResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateHomeworkResponseModel() when $default != null:
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
case _CreateHomeworkResponseModel() when $default != null:
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
case _CreateHomeworkResponseModel():
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
case _CreateHomeworkResponseModel() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateHomeworkResponseModel implements CreateHomeworkResponseModel {
  const _CreateHomeworkResponseModel({required this.message});
  factory _CreateHomeworkResponseModel.fromJson(Map<String, dynamic> json) => _$CreateHomeworkResponseModelFromJson(json);

@override final  String message;

/// Create a copy of CreateHomeworkResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateHomeworkResponseModelCopyWith<_CreateHomeworkResponseModel> get copyWith => __$CreateHomeworkResponseModelCopyWithImpl<_CreateHomeworkResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateHomeworkResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateHomeworkResponseModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CreateHomeworkResponseModel(message: $message)';
}


}

/// @nodoc
abstract mixin class _$CreateHomeworkResponseModelCopyWith<$Res> implements $CreateHomeworkResponseModelCopyWith<$Res> {
  factory _$CreateHomeworkResponseModelCopyWith(_CreateHomeworkResponseModel value, $Res Function(_CreateHomeworkResponseModel) _then) = __$CreateHomeworkResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$CreateHomeworkResponseModelCopyWithImpl<$Res>
    implements _$CreateHomeworkResponseModelCopyWith<$Res> {
  __$CreateHomeworkResponseModelCopyWithImpl(this._self, this._then);

  final _CreateHomeworkResponseModel _self;
  final $Res Function(_CreateHomeworkResponseModel) _then;

/// Create a copy of CreateHomeworkResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_CreateHomeworkResponseModel(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
