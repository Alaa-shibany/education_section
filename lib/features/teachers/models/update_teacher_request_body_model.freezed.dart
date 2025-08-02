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

 int get id; String get full_name; String get phone_number; String get email; List<int> get subjects;
/// Create a copy of UpdateTeacherRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTeacherRequestBodyModelCopyWith<UpdateTeacherRequestBodyModel> get copyWith => _$UpdateTeacherRequestBodyModelCopyWithImpl<UpdateTeacherRequestBodyModel>(this as UpdateTeacherRequestBodyModel, _$identity);

  /// Serializes this UpdateTeacherRequestBodyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTeacherRequestBodyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.full_name, full_name) || other.full_name == full_name)&&(identical(other.phone_number, phone_number) || other.phone_number == phone_number)&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other.subjects, subjects));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,full_name,phone_number,email,const DeepCollectionEquality().hash(subjects));

@override
String toString() {
  return 'UpdateTeacherRequestBodyModel(id: $id, full_name: $full_name, phone_number: $phone_number, email: $email, subjects: $subjects)';
}


}

/// @nodoc
abstract mixin class $UpdateTeacherRequestBodyModelCopyWith<$Res>  {
  factory $UpdateTeacherRequestBodyModelCopyWith(UpdateTeacherRequestBodyModel value, $Res Function(UpdateTeacherRequestBodyModel) _then) = _$UpdateTeacherRequestBodyModelCopyWithImpl;
@useResult
$Res call({
 int id, String full_name, String phone_number, String email, List<int> subjects
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? full_name = null,Object? phone_number = null,Object? email = null,Object? subjects = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,full_name: null == full_name ? _self.full_name : full_name // ignore: cast_nullable_to_non_nullable
as String,phone_number: null == phone_number ? _self.phone_number : phone_number // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String full_name,  String phone_number,  String email,  List<int> subjects)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateTeacherRequestBodyModel() when $default != null:
return $default(_that.id,_that.full_name,_that.phone_number,_that.email,_that.subjects);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String full_name,  String phone_number,  String email,  List<int> subjects)  $default,) {final _that = this;
switch (_that) {
case _UpdateTeacherRequestBodyModel():
return $default(_that.id,_that.full_name,_that.phone_number,_that.email,_that.subjects);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String full_name,  String phone_number,  String email,  List<int> subjects)?  $default,) {final _that = this;
switch (_that) {
case _UpdateTeacherRequestBodyModel() when $default != null:
return $default(_that.id,_that.full_name,_that.phone_number,_that.email,_that.subjects);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateTeacherRequestBodyModel implements UpdateTeacherRequestBodyModel {
  const _UpdateTeacherRequestBodyModel({required this.id, required this.full_name, required this.phone_number, required this.email, required final  List<int> subjects}): _subjects = subjects;
  factory _UpdateTeacherRequestBodyModel.fromJson(Map<String, dynamic> json) => _$UpdateTeacherRequestBodyModelFromJson(json);

@override final  int id;
@override final  String full_name;
@override final  String phone_number;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTeacherRequestBodyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.full_name, full_name) || other.full_name == full_name)&&(identical(other.phone_number, phone_number) || other.phone_number == phone_number)&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other._subjects, _subjects));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,full_name,phone_number,email,const DeepCollectionEquality().hash(_subjects));

@override
String toString() {
  return 'UpdateTeacherRequestBodyModel(id: $id, full_name: $full_name, phone_number: $phone_number, email: $email, subjects: $subjects)';
}


}

/// @nodoc
abstract mixin class _$UpdateTeacherRequestBodyModelCopyWith<$Res> implements $UpdateTeacherRequestBodyModelCopyWith<$Res> {
  factory _$UpdateTeacherRequestBodyModelCopyWith(_UpdateTeacherRequestBodyModel value, $Res Function(_UpdateTeacherRequestBodyModel) _then) = __$UpdateTeacherRequestBodyModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String full_name, String phone_number, String email, List<int> subjects
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? full_name = null,Object? phone_number = null,Object? email = null,Object? subjects = null,}) {
  return _then(_UpdateTeacherRequestBodyModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,full_name: null == full_name ? _self.full_name : full_name // ignore: cast_nullable_to_non_nullable
as String,phone_number: null == phone_number ? _self.phone_number : phone_number // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,subjects: null == subjects ? _self._subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
