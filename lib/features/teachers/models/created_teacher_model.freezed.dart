// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'created_teacher_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatedTeacherModel {

 int get name; int get email; List<SubjectModel> get subjects; String get createdAt;
/// Create a copy of CreatedTeacherModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatedTeacherModelCopyWith<CreatedTeacherModel> get copyWith => _$CreatedTeacherModelCopyWithImpl<CreatedTeacherModel>(this as CreatedTeacherModel, _$identity);

  /// Serializes this CreatedTeacherModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatedTeacherModel&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other.subjects, subjects)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,const DeepCollectionEquality().hash(subjects),createdAt);

@override
String toString() {
  return 'CreatedTeacherModel(name: $name, email: $email, subjects: $subjects, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CreatedTeacherModelCopyWith<$Res>  {
  factory $CreatedTeacherModelCopyWith(CreatedTeacherModel value, $Res Function(CreatedTeacherModel) _then) = _$CreatedTeacherModelCopyWithImpl;
@useResult
$Res call({
 int name, int email, List<SubjectModel> subjects, String createdAt
});




}
/// @nodoc
class _$CreatedTeacherModelCopyWithImpl<$Res>
    implements $CreatedTeacherModelCopyWith<$Res> {
  _$CreatedTeacherModelCopyWithImpl(this._self, this._then);

  final CreatedTeacherModel _self;
  final $Res Function(CreatedTeacherModel) _then;

/// Create a copy of CreatedTeacherModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? email = null,Object? subjects = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as int,subjects: null == subjects ? _self.subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<SubjectModel>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatedTeacherModel].
extension CreatedTeacherModelPatterns on CreatedTeacherModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatedTeacherModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatedTeacherModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatedTeacherModel value)  $default,){
final _that = this;
switch (_that) {
case _CreatedTeacherModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatedTeacherModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreatedTeacherModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int name,  int email,  List<SubjectModel> subjects,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatedTeacherModel() when $default != null:
return $default(_that.name,_that.email,_that.subjects,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int name,  int email,  List<SubjectModel> subjects,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _CreatedTeacherModel():
return $default(_that.name,_that.email,_that.subjects,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int name,  int email,  List<SubjectModel> subjects,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CreatedTeacherModel() when $default != null:
return $default(_that.name,_that.email,_that.subjects,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatedTeacherModel implements CreatedTeacherModel {
  const _CreatedTeacherModel({required this.name, required this.email, required final  List<SubjectModel> subjects, required this.createdAt}): _subjects = subjects;
  factory _CreatedTeacherModel.fromJson(Map<String, dynamic> json) => _$CreatedTeacherModelFromJson(json);

@override final  int name;
@override final  int email;
 final  List<SubjectModel> _subjects;
@override List<SubjectModel> get subjects {
  if (_subjects is EqualUnmodifiableListView) return _subjects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subjects);
}

@override final  String createdAt;

/// Create a copy of CreatedTeacherModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatedTeacherModelCopyWith<_CreatedTeacherModel> get copyWith => __$CreatedTeacherModelCopyWithImpl<_CreatedTeacherModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatedTeacherModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatedTeacherModel&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other._subjects, _subjects)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,const DeepCollectionEquality().hash(_subjects),createdAt);

@override
String toString() {
  return 'CreatedTeacherModel(name: $name, email: $email, subjects: $subjects, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CreatedTeacherModelCopyWith<$Res> implements $CreatedTeacherModelCopyWith<$Res> {
  factory _$CreatedTeacherModelCopyWith(_CreatedTeacherModel value, $Res Function(_CreatedTeacherModel) _then) = __$CreatedTeacherModelCopyWithImpl;
@override @useResult
$Res call({
 int name, int email, List<SubjectModel> subjects, String createdAt
});




}
/// @nodoc
class __$CreatedTeacherModelCopyWithImpl<$Res>
    implements _$CreatedTeacherModelCopyWith<$Res> {
  __$CreatedTeacherModelCopyWithImpl(this._self, this._then);

  final _CreatedTeacherModel _self;
  final $Res Function(_CreatedTeacherModel) _then;

/// Create a copy of CreatedTeacherModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? subjects = null,Object? createdAt = null,}) {
  return _then(_CreatedTeacherModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as int,subjects: null == subjects ? _self._subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<SubjectModel>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
