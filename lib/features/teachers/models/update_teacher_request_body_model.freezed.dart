// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_teacher_request_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateTeacherRequestBodyModel {

 String get name; String get email; List<int> get subjects;
/// Create a copy of UpdateTeacherRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTeacherRequestBodyModelCopyWith<UpdateTeacherRequestBodyModel> get copyWith => _$UpdateTeacherRequestBodyModelCopyWithImpl<UpdateTeacherRequestBodyModel>(this as UpdateTeacherRequestBodyModel, _$identity);

  /// Serializes this UpdateTeacherRequestBodyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTeacherRequestBodyModel&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other.subjects, subjects));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,const DeepCollectionEquality().hash(subjects));

@override
String toString() {
  return 'UpdateTeacherRequestBodyModel(name: $name, email: $email, subjects: $subjects)';
}


}

/// @nodoc
abstract mixin class $UpdateTeacherRequestBodyModelCopyWith<$Res>  {
  factory $UpdateTeacherRequestBodyModelCopyWith(UpdateTeacherRequestBodyModel value, $Res Function(UpdateTeacherRequestBodyModel) _then) = _$UpdateTeacherRequestBodyModelCopyWithImpl;
@useResult
$Res call({
 String name, String email, List<int> subjects
});




}
/// @nodoc
class _$UpdateTeacherRequestBodyModelCopyWithImpl<$Res>
    implements $UpdateTeacherRequestBodyModelCopyWith<$Res> {
  _$UpdateTeacherRequestBodyModelCopyWithImpl(this._self, this._then);

  final UpdateTeacherRequestBodyModel _self;
  final $Res Function(UpdateTeacherRequestBodyModel) _then;

/// Create a copy of UpdateTeacherRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? email = null,Object? subjects = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,subjects: null == subjects ? _self.subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateTeacherRequestBodyModel].
extension UpdateTeacherRequestBodyModelPatterns on UpdateTeacherRequestBodyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateTeacherRequestBodyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateTeacherRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateTeacherRequestBodyModel value)  $default,){
final _that = this;
switch (_that) {
case _UpdateTeacherRequestBodyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateTeacherRequestBodyModel value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateTeacherRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String email,  List<int> subjects)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateTeacherRequestBodyModel() when $default != null:
return $default(_that.name,_that.email,_that.subjects);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String email,  List<int> subjects)  $default,) {final _that = this;
switch (_that) {
case _UpdateTeacherRequestBodyModel():
return $default(_that.name,_that.email,_that.subjects);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String email,  List<int> subjects)?  $default,) {final _that = this;
switch (_that) {
case _UpdateTeacherRequestBodyModel() when $default != null:
return $default(_that.name,_that.email,_that.subjects);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateTeacherRequestBodyModel implements UpdateTeacherRequestBodyModel {
  const _UpdateTeacherRequestBodyModel({required this.name, required this.email, required final  List<int> subjects}): _subjects = subjects;
  factory _UpdateTeacherRequestBodyModel.fromJson(Map<String, dynamic> json) => _$UpdateTeacherRequestBodyModelFromJson(json);

@override final  String name;
@override final  String email;
 final  List<int> _subjects;
@override List<int> get subjects {
  if (_subjects is EqualUnmodifiableListView) return _subjects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subjects);
}


/// Create a copy of UpdateTeacherRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTeacherRequestBodyModelCopyWith<_UpdateTeacherRequestBodyModel> get copyWith => __$UpdateTeacherRequestBodyModelCopyWithImpl<_UpdateTeacherRequestBodyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateTeacherRequestBodyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTeacherRequestBodyModel&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other._subjects, _subjects));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,const DeepCollectionEquality().hash(_subjects));

@override
String toString() {
  return 'UpdateTeacherRequestBodyModel(name: $name, email: $email, subjects: $subjects)';
}


}

/// @nodoc
abstract mixin class _$UpdateTeacherRequestBodyModelCopyWith<$Res> implements $UpdateTeacherRequestBodyModelCopyWith<$Res> {
  factory _$UpdateTeacherRequestBodyModelCopyWith(_UpdateTeacherRequestBodyModel value, $Res Function(_UpdateTeacherRequestBodyModel) _then) = __$UpdateTeacherRequestBodyModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String email, List<int> subjects
});




}
/// @nodoc
class __$UpdateTeacherRequestBodyModelCopyWithImpl<$Res>
    implements _$UpdateTeacherRequestBodyModelCopyWith<$Res> {
  __$UpdateTeacherRequestBodyModelCopyWithImpl(this._self, this._then);

  final _UpdateTeacherRequestBodyModel _self;
  final $Res Function(_UpdateTeacherRequestBodyModel) _then;

/// Create a copy of UpdateTeacherRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? subjects = null,}) {
  return _then(_UpdateTeacherRequestBodyModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,subjects: null == subjects ? _self._subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
