// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_subject_request_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateSubjectRequestBodyModel {

 String get name;
/// Create a copy of CreateSubjectRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateSubjectRequestBodyModelCopyWith<CreateSubjectRequestBodyModel> get copyWith => _$CreateSubjectRequestBodyModelCopyWithImpl<CreateSubjectRequestBodyModel>(this as CreateSubjectRequestBodyModel, _$identity);

  /// Serializes this CreateSubjectRequestBodyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateSubjectRequestBodyModel&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'CreateSubjectRequestBodyModel(name: $name)';
}


}

/// @nodoc
abstract mixin class $CreateSubjectRequestBodyModelCopyWith<$Res>  {
  factory $CreateSubjectRequestBodyModelCopyWith(CreateSubjectRequestBodyModel value, $Res Function(CreateSubjectRequestBodyModel) _then) = _$CreateSubjectRequestBodyModelCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$CreateSubjectRequestBodyModelCopyWithImpl<$Res>
    implements $CreateSubjectRequestBodyModelCopyWith<$Res> {
  _$CreateSubjectRequestBodyModelCopyWithImpl(this._self, this._then);

  final CreateSubjectRequestBodyModel _self;
  final $Res Function(CreateSubjectRequestBodyModel) _then;

/// Create a copy of CreateSubjectRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateSubjectRequestBodyModel].
extension CreateSubjectRequestBodyModelPatterns on CreateSubjectRequestBodyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateSubjectRequestBodyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateSubjectRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateSubjectRequestBodyModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateSubjectRequestBodyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateSubjectRequestBodyModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateSubjectRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateSubjectRequestBodyModel() when $default != null:
return $default(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name)  $default,) {final _that = this;
switch (_that) {
case _CreateSubjectRequestBodyModel():
return $default(_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name)?  $default,) {final _that = this;
switch (_that) {
case _CreateSubjectRequestBodyModel() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateSubjectRequestBodyModel implements CreateSubjectRequestBodyModel {
  const _CreateSubjectRequestBodyModel({required this.name});
  factory _CreateSubjectRequestBodyModel.fromJson(Map<String, dynamic> json) => _$CreateSubjectRequestBodyModelFromJson(json);

@override final  String name;

/// Create a copy of CreateSubjectRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateSubjectRequestBodyModelCopyWith<_CreateSubjectRequestBodyModel> get copyWith => __$CreateSubjectRequestBodyModelCopyWithImpl<_CreateSubjectRequestBodyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateSubjectRequestBodyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateSubjectRequestBodyModel&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'CreateSubjectRequestBodyModel(name: $name)';
}


}

/// @nodoc
abstract mixin class _$CreateSubjectRequestBodyModelCopyWith<$Res> implements $CreateSubjectRequestBodyModelCopyWith<$Res> {
  factory _$CreateSubjectRequestBodyModelCopyWith(_CreateSubjectRequestBodyModel value, $Res Function(_CreateSubjectRequestBodyModel) _then) = __$CreateSubjectRequestBodyModelCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$CreateSubjectRequestBodyModelCopyWithImpl<$Res>
    implements _$CreateSubjectRequestBodyModelCopyWith<$Res> {
  __$CreateSubjectRequestBodyModelCopyWithImpl(this._self, this._then);

  final _CreateSubjectRequestBodyModel _self;
  final $Res Function(_CreateSubjectRequestBodyModel) _then;

/// Create a copy of CreateSubjectRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_CreateSubjectRequestBodyModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
