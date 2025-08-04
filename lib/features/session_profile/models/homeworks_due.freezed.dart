// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homeworks_due.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeworksDue {

 int get id; String get description; String get goal;
/// Create a copy of HomeworksDue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeworksDueCopyWith<HomeworksDue> get copyWith => _$HomeworksDueCopyWithImpl<HomeworksDue>(this as HomeworksDue, _$identity);

  /// Serializes this HomeworksDue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeworksDue&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&(identical(other.goal, goal) || other.goal == goal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,description,goal);

@override
String toString() {
  return 'HomeworksDue(id: $id, description: $description, goal: $goal)';
}


}

/// @nodoc
abstract mixin class $HomeworksDueCopyWith<$Res>  {
  factory $HomeworksDueCopyWith(HomeworksDue value, $Res Function(HomeworksDue) _then) = _$HomeworksDueCopyWithImpl;
@useResult
$Res call({
 int id, String description, String goal
});




}
/// @nodoc
class _$HomeworksDueCopyWithImpl<$Res>
    implements $HomeworksDueCopyWith<$Res> {
  _$HomeworksDueCopyWithImpl(this._self, this._then);

  final HomeworksDue _self;
  final $Res Function(HomeworksDue) _then;

/// Create a copy of HomeworksDue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? description = null,Object? goal = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeworksDue].
extension HomeworksDuePatterns on HomeworksDue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeworksDue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeworksDue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeworksDue value)  $default,){
final _that = this;
switch (_that) {
case _HomeworksDue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeworksDue value)?  $default,){
final _that = this;
switch (_that) {
case _HomeworksDue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String description,  String goal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeworksDue() when $default != null:
return $default(_that.id,_that.description,_that.goal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String description,  String goal)  $default,) {final _that = this;
switch (_that) {
case _HomeworksDue():
return $default(_that.id,_that.description,_that.goal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String description,  String goal)?  $default,) {final _that = this;
switch (_that) {
case _HomeworksDue() when $default != null:
return $default(_that.id,_that.description,_that.goal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeworksDue implements HomeworksDue {
  const _HomeworksDue({required this.id, required this.description, required this.goal});
  factory _HomeworksDue.fromJson(Map<String, dynamic> json) => _$HomeworksDueFromJson(json);

@override final  int id;
@override final  String description;
@override final  String goal;

/// Create a copy of HomeworksDue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeworksDueCopyWith<_HomeworksDue> get copyWith => __$HomeworksDueCopyWithImpl<_HomeworksDue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeworksDueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeworksDue&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&(identical(other.goal, goal) || other.goal == goal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,description,goal);

@override
String toString() {
  return 'HomeworksDue(id: $id, description: $description, goal: $goal)';
}


}

/// @nodoc
abstract mixin class _$HomeworksDueCopyWith<$Res> implements $HomeworksDueCopyWith<$Res> {
  factory _$HomeworksDueCopyWith(_HomeworksDue value, $Res Function(_HomeworksDue) _then) = __$HomeworksDueCopyWithImpl;
@override @useResult
$Res call({
 int id, String description, String goal
});




}
/// @nodoc
class __$HomeworksDueCopyWithImpl<$Res>
    implements _$HomeworksDueCopyWith<$Res> {
  __$HomeworksDueCopyWithImpl(this._self, this._then);

  final _HomeworksDue _self;
  final $Res Function(_HomeworksDue) _then;

/// Create a copy of HomeworksDue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? description = null,Object? goal = null,}) {
  return _then(_HomeworksDue(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
