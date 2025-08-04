// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_homework_request_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateHomeworkRequestBodyModel {

 String get description; String get goal; int get course_id; int get due_session_id;
/// Create a copy of CreateHomeworkRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateHomeworkRequestBodyModelCopyWith<CreateHomeworkRequestBodyModel> get copyWith => _$CreateHomeworkRequestBodyModelCopyWithImpl<CreateHomeworkRequestBodyModel>(this as CreateHomeworkRequestBodyModel, _$identity);

  /// Serializes this CreateHomeworkRequestBodyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateHomeworkRequestBodyModel&&(identical(other.description, description) || other.description == description)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.course_id, course_id) || other.course_id == course_id)&&(identical(other.due_session_id, due_session_id) || other.due_session_id == due_session_id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,goal,course_id,due_session_id);

@override
String toString() {
  return 'CreateHomeworkRequestBodyModel(description: $description, goal: $goal, course_id: $course_id, due_session_id: $due_session_id)';
}


}

/// @nodoc
abstract mixin class $CreateHomeworkRequestBodyModelCopyWith<$Res>  {
  factory $CreateHomeworkRequestBodyModelCopyWith(CreateHomeworkRequestBodyModel value, $Res Function(CreateHomeworkRequestBodyModel) _then) = _$CreateHomeworkRequestBodyModelCopyWithImpl;
@useResult
$Res call({
 String description, String goal, int course_id, int due_session_id
});




}
/// @nodoc
class _$CreateHomeworkRequestBodyModelCopyWithImpl<$Res>
    implements $CreateHomeworkRequestBodyModelCopyWith<$Res> {
  _$CreateHomeworkRequestBodyModelCopyWithImpl(this._self, this._then);

  final CreateHomeworkRequestBodyModel _self;
  final $Res Function(CreateHomeworkRequestBodyModel) _then;

/// Create a copy of CreateHomeworkRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,Object? goal = null,Object? course_id = null,Object? due_session_id = null,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as String,course_id: null == course_id ? _self.course_id : course_id // ignore: cast_nullable_to_non_nullable
as int,due_session_id: null == due_session_id ? _self.due_session_id : due_session_id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateHomeworkRequestBodyModel].
extension CreateHomeworkRequestBodyModelPatterns on CreateHomeworkRequestBodyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateHomeworkRequestBodyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateHomeworkRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateHomeworkRequestBodyModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateHomeworkRequestBodyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateHomeworkRequestBodyModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateHomeworkRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String description,  String goal,  int course_id,  int due_session_id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateHomeworkRequestBodyModel() when $default != null:
return $default(_that.description,_that.goal,_that.course_id,_that.due_session_id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String description,  String goal,  int course_id,  int due_session_id)  $default,) {final _that = this;
switch (_that) {
case _CreateHomeworkRequestBodyModel():
return $default(_that.description,_that.goal,_that.course_id,_that.due_session_id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String description,  String goal,  int course_id,  int due_session_id)?  $default,) {final _that = this;
switch (_that) {
case _CreateHomeworkRequestBodyModel() when $default != null:
return $default(_that.description,_that.goal,_that.course_id,_that.due_session_id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateHomeworkRequestBodyModel implements CreateHomeworkRequestBodyModel {
  const _CreateHomeworkRequestBodyModel({required this.description, required this.goal, required this.course_id, required this.due_session_id});
  factory _CreateHomeworkRequestBodyModel.fromJson(Map<String, dynamic> json) => _$CreateHomeworkRequestBodyModelFromJson(json);

@override final  String description;
@override final  String goal;
@override final  int course_id;
@override final  int due_session_id;

/// Create a copy of CreateHomeworkRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateHomeworkRequestBodyModelCopyWith<_CreateHomeworkRequestBodyModel> get copyWith => __$CreateHomeworkRequestBodyModelCopyWithImpl<_CreateHomeworkRequestBodyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateHomeworkRequestBodyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateHomeworkRequestBodyModel&&(identical(other.description, description) || other.description == description)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.course_id, course_id) || other.course_id == course_id)&&(identical(other.due_session_id, due_session_id) || other.due_session_id == due_session_id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,goal,course_id,due_session_id);

@override
String toString() {
  return 'CreateHomeworkRequestBodyModel(description: $description, goal: $goal, course_id: $course_id, due_session_id: $due_session_id)';
}


}

/// @nodoc
abstract mixin class _$CreateHomeworkRequestBodyModelCopyWith<$Res> implements $CreateHomeworkRequestBodyModelCopyWith<$Res> {
  factory _$CreateHomeworkRequestBodyModelCopyWith(_CreateHomeworkRequestBodyModel value, $Res Function(_CreateHomeworkRequestBodyModel) _then) = __$CreateHomeworkRequestBodyModelCopyWithImpl;
@override @useResult
$Res call({
 String description, String goal, int course_id, int due_session_id
});




}
/// @nodoc
class __$CreateHomeworkRequestBodyModelCopyWithImpl<$Res>
    implements _$CreateHomeworkRequestBodyModelCopyWith<$Res> {
  __$CreateHomeworkRequestBodyModelCopyWithImpl(this._self, this._then);

  final _CreateHomeworkRequestBodyModel _self;
  final $Res Function(_CreateHomeworkRequestBodyModel) _then;

/// Create a copy of CreateHomeworkRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,Object? goal = null,Object? course_id = null,Object? due_session_id = null,}) {
  return _then(_CreateHomeworkRequestBodyModel(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as String,course_id: null == course_id ? _self.course_id : course_id // ignore: cast_nullable_to_non_nullable
as int,due_session_id: null == due_session_id ? _self.due_session_id : due_session_id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
