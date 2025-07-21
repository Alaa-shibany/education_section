// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$teacherModel {

 int get id; String get name; String get email; String get created_at; String get updated_at;
/// Create a copy of teacherModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$teacherModelCopyWith<teacherModel> get copyWith => _$teacherModelCopyWithImpl<teacherModel>(this as teacherModel, _$identity);

  /// Serializes this teacherModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is teacherModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,created_at,updated_at);

@override
String toString() {
  return 'teacherModel(id: $id, name: $name, email: $email, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class $teacherModelCopyWith<$Res>  {
  factory $teacherModelCopyWith(teacherModel value, $Res Function(teacherModel) _then) = _$teacherModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String email, String created_at, String updated_at
});




}
/// @nodoc
class _$teacherModelCopyWithImpl<$Res>
    implements $teacherModelCopyWith<$Res> {
  _$teacherModelCopyWithImpl(this._self, this._then);

  final teacherModel _self;
  final $Res Function(teacherModel) _then;

/// Create a copy of teacherModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? created_at = null,Object? updated_at = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String,updated_at: null == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [teacherModel].
extension teacherModelPatterns on teacherModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _teacherModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _teacherModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _teacherModel value)  $default,){
final _that = this;
switch (_that) {
case _teacherModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _teacherModel value)?  $default,){
final _that = this;
switch (_that) {
case _teacherModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String email,  String created_at,  String updated_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _teacherModel() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String email,  String created_at,  String updated_at)  $default,) {final _that = this;
switch (_that) {
case _teacherModel():
return $default(_that.id,_that.name,_that.email,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String email,  String created_at,  String updated_at)?  $default,) {final _that = this;
switch (_that) {
case _teacherModel() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.created_at,_that.updated_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _teacherModel implements teacherModel {
  const _teacherModel({required this.id, required this.name, required this.email, required this.created_at, required this.updated_at});
  factory _teacherModel.fromJson(Map<String, dynamic> json) => _$teacherModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String email;
@override final  String created_at;
@override final  String updated_at;

/// Create a copy of teacherModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$teacherModelCopyWith<_teacherModel> get copyWith => __$teacherModelCopyWithImpl<_teacherModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$teacherModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _teacherModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,created_at,updated_at);

@override
String toString() {
  return 'teacherModel(id: $id, name: $name, email: $email, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class _$teacherModelCopyWith<$Res> implements $teacherModelCopyWith<$Res> {
  factory _$teacherModelCopyWith(_teacherModel value, $Res Function(_teacherModel) _then) = __$teacherModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String email, String created_at, String updated_at
});




}
/// @nodoc
class __$teacherModelCopyWithImpl<$Res>
    implements _$teacherModelCopyWith<$Res> {
  __$teacherModelCopyWithImpl(this._self, this._then);

  final _teacherModel _self;
  final $Res Function(_teacherModel) _then;

/// Create a copy of teacherModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? created_at = null,Object? updated_at = null,}) {
  return _then(_teacherModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,created_at: null == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String,updated_at: null == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
