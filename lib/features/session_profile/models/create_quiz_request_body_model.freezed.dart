// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_quiz_request_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateQuizRequestBodyModel {

 String get description; String get goal; int get success_mark; int get course_session_id;
/// Create a copy of CreateQuizRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateQuizRequestBodyModelCopyWith<CreateQuizRequestBodyModel> get copyWith => _$CreateQuizRequestBodyModelCopyWithImpl<CreateQuizRequestBodyModel>(this as CreateQuizRequestBodyModel, _$identity);

  /// Serializes this CreateQuizRequestBodyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateQuizRequestBodyModel&&(identical(other.description, description) || other.description == description)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.success_mark, success_mark) || other.success_mark == success_mark)&&(identical(other.course_session_id, course_session_id) || other.course_session_id == course_session_id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,goal,success_mark,course_session_id);

@override
String toString() {
  return 'CreateQuizRequestBodyModel(description: $description, goal: $goal, success_mark: $success_mark, course_session_id: $course_session_id)';
}


}

/// @nodoc
abstract mixin class $CreateQuizRequestBodyModelCopyWith<$Res>  {
  factory $CreateQuizRequestBodyModelCopyWith(CreateQuizRequestBodyModel value, $Res Function(CreateQuizRequestBodyModel) _then) = _$CreateQuizRequestBodyModelCopyWithImpl;
@useResult
$Res call({
 String description, String goal, int success_mark, int course_session_id
});




}
/// @nodoc
class _$CreateQuizRequestBodyModelCopyWithImpl<$Res>
    implements $CreateQuizRequestBodyModelCopyWith<$Res> {
  _$CreateQuizRequestBodyModelCopyWithImpl(this._self, this._then);

  final CreateQuizRequestBodyModel _self;
  final $Res Function(CreateQuizRequestBodyModel) _then;

/// Create a copy of CreateQuizRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,Object? goal = null,Object? success_mark = null,Object? course_session_id = null,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as String,success_mark: null == success_mark ? _self.success_mark : success_mark // ignore: cast_nullable_to_non_nullable
as int,course_session_id: null == course_session_id ? _self.course_session_id : course_session_id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateQuizRequestBodyModel].
extension CreateQuizRequestBodyModelPatterns on CreateQuizRequestBodyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateQuizRequestBodyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateQuizRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateQuizRequestBodyModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateQuizRequestBodyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateQuizRequestBodyModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateQuizRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String description,  String goal,  int success_mark,  int course_session_id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateQuizRequestBodyModel() when $default != null:
return $default(_that.description,_that.goal,_that.success_mark,_that.course_session_id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String description,  String goal,  int success_mark,  int course_session_id)  $default,) {final _that = this;
switch (_that) {
case _CreateQuizRequestBodyModel():
return $default(_that.description,_that.goal,_that.success_mark,_that.course_session_id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String description,  String goal,  int success_mark,  int course_session_id)?  $default,) {final _that = this;
switch (_that) {
case _CreateQuizRequestBodyModel() when $default != null:
return $default(_that.description,_that.goal,_that.success_mark,_that.course_session_id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateQuizRequestBodyModel implements CreateQuizRequestBodyModel {
  const _CreateQuizRequestBodyModel({required this.description, required this.goal, required this.success_mark, required this.course_session_id});
  factory _CreateQuizRequestBodyModel.fromJson(Map<String, dynamic> json) => _$CreateQuizRequestBodyModelFromJson(json);

@override final  String description;
@override final  String goal;
@override final  int success_mark;
@override final  int course_session_id;

/// Create a copy of CreateQuizRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateQuizRequestBodyModelCopyWith<_CreateQuizRequestBodyModel> get copyWith => __$CreateQuizRequestBodyModelCopyWithImpl<_CreateQuizRequestBodyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateQuizRequestBodyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateQuizRequestBodyModel&&(identical(other.description, description) || other.description == description)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.success_mark, success_mark) || other.success_mark == success_mark)&&(identical(other.course_session_id, course_session_id) || other.course_session_id == course_session_id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,goal,success_mark,course_session_id);

@override
String toString() {
  return 'CreateQuizRequestBodyModel(description: $description, goal: $goal, success_mark: $success_mark, course_session_id: $course_session_id)';
}


}

/// @nodoc
abstract mixin class _$CreateQuizRequestBodyModelCopyWith<$Res> implements $CreateQuizRequestBodyModelCopyWith<$Res> {
  factory _$CreateQuizRequestBodyModelCopyWith(_CreateQuizRequestBodyModel value, $Res Function(_CreateQuizRequestBodyModel) _then) = __$CreateQuizRequestBodyModelCopyWithImpl;
@override @useResult
$Res call({
 String description, String goal, int success_mark, int course_session_id
});




}
/// @nodoc
class __$CreateQuizRequestBodyModelCopyWithImpl<$Res>
    implements _$CreateQuizRequestBodyModelCopyWith<$Res> {
  __$CreateQuizRequestBodyModelCopyWithImpl(this._self, this._then);

  final _CreateQuizRequestBodyModel _self;
  final $Res Function(_CreateQuizRequestBodyModel) _then;

/// Create a copy of CreateQuizRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,Object? goal = null,Object? success_mark = null,Object? course_session_id = null,}) {
  return _then(_CreateQuizRequestBodyModel(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as String,success_mark: null == success_mark ? _self.success_mark : success_mark // ignore: cast_nullable_to_non_nullable
as int,course_session_id: null == course_session_id ? _self.course_session_id : course_session_id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
