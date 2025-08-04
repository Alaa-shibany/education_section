// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuizModel {

 int get id; String get description; String get goal;@JsonKey(name: 'success_mark') int get successMark;
/// Create a copy of QuizModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizModelCopyWith<QuizModel> get copyWith => _$QuizModelCopyWithImpl<QuizModel>(this as QuizModel, _$identity);

  /// Serializes this QuizModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizModel&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.successMark, successMark) || other.successMark == successMark));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,description,goal,successMark);

@override
String toString() {
  return 'QuizModel(id: $id, description: $description, goal: $goal, successMark: $successMark)';
}


}

/// @nodoc
abstract mixin class $QuizModelCopyWith<$Res>  {
  factory $QuizModelCopyWith(QuizModel value, $Res Function(QuizModel) _then) = _$QuizModelCopyWithImpl;
@useResult
$Res call({
 int id, String description, String goal,@JsonKey(name: 'success_mark') int successMark
});




}
/// @nodoc
class _$QuizModelCopyWithImpl<$Res>
    implements $QuizModelCopyWith<$Res> {
  _$QuizModelCopyWithImpl(this._self, this._then);

  final QuizModel _self;
  final $Res Function(QuizModel) _then;

/// Create a copy of QuizModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? description = null,Object? goal = null,Object? successMark = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as String,successMark: null == successMark ? _self.successMark : successMark // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizModel].
extension QuizModelPatterns on QuizModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizModel value)  $default,){
final _that = this;
switch (_that) {
case _QuizModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizModel value)?  $default,){
final _that = this;
switch (_that) {
case _QuizModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String description,  String goal, @JsonKey(name: 'success_mark')  int successMark)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizModel() when $default != null:
return $default(_that.id,_that.description,_that.goal,_that.successMark);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String description,  String goal, @JsonKey(name: 'success_mark')  int successMark)  $default,) {final _that = this;
switch (_that) {
case _QuizModel():
return $default(_that.id,_that.description,_that.goal,_that.successMark);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String description,  String goal, @JsonKey(name: 'success_mark')  int successMark)?  $default,) {final _that = this;
switch (_that) {
case _QuizModel() when $default != null:
return $default(_that.id,_that.description,_that.goal,_that.successMark);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuizModel implements QuizModel {
  const _QuizModel({required this.id, required this.description, required this.goal, @JsonKey(name: 'success_mark') required this.successMark});
  factory _QuizModel.fromJson(Map<String, dynamic> json) => _$QuizModelFromJson(json);

@override final  int id;
@override final  String description;
@override final  String goal;
@override@JsonKey(name: 'success_mark') final  int successMark;

/// Create a copy of QuizModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizModelCopyWith<_QuizModel> get copyWith => __$QuizModelCopyWithImpl<_QuizModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizModel&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.successMark, successMark) || other.successMark == successMark));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,description,goal,successMark);

@override
String toString() {
  return 'QuizModel(id: $id, description: $description, goal: $goal, successMark: $successMark)';
}


}

/// @nodoc
abstract mixin class _$QuizModelCopyWith<$Res> implements $QuizModelCopyWith<$Res> {
  factory _$QuizModelCopyWith(_QuizModel value, $Res Function(_QuizModel) _then) = __$QuizModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String description, String goal,@JsonKey(name: 'success_mark') int successMark
});




}
/// @nodoc
class __$QuizModelCopyWithImpl<$Res>
    implements _$QuizModelCopyWith<$Res> {
  __$QuizModelCopyWithImpl(this._self, this._then);

  final _QuizModel _self;
  final $Res Function(_QuizModel) _then;

/// Create a copy of QuizModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? description = null,Object? goal = null,Object? successMark = null,}) {
  return _then(_QuizModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as String,successMark: null == successMark ? _self.successMark : successMark // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
