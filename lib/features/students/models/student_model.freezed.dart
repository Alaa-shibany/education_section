// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudentModel {

 int get id; String get name; int get age; String get gender;@JsonKey(name: 'residence_place') String get residencePlace;@JsonKey(name: 'partner_name') String get partnerName;@JsonKey(name: 'birth_date') String get birthDay;
/// Create a copy of StudentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentModelCopyWith<StudentModel> get copyWith => _$StudentModelCopyWithImpl<StudentModel>(this as StudentModel, _$identity);

  /// Serializes this StudentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.residencePlace, residencePlace) || other.residencePlace == residencePlace)&&(identical(other.partnerName, partnerName) || other.partnerName == partnerName)&&(identical(other.birthDay, birthDay) || other.birthDay == birthDay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,age,gender,residencePlace,partnerName,birthDay);

@override
String toString() {
  return 'StudentModel(id: $id, name: $name, age: $age, gender: $gender, residencePlace: $residencePlace, partnerName: $partnerName, birthDay: $birthDay)';
}


}

/// @nodoc
abstract mixin class $StudentModelCopyWith<$Res>  {
  factory $StudentModelCopyWith(StudentModel value, $Res Function(StudentModel) _then) = _$StudentModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, int age, String gender,@JsonKey(name: 'residence_place') String residencePlace,@JsonKey(name: 'partner_name') String partnerName,@JsonKey(name: 'birth_date') String birthDay
});




}
/// @nodoc
class _$StudentModelCopyWithImpl<$Res>
    implements $StudentModelCopyWith<$Res> {
  _$StudentModelCopyWithImpl(this._self, this._then);

  final StudentModel _self;
  final $Res Function(StudentModel) _then;

/// Create a copy of StudentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? age = null,Object? gender = null,Object? residencePlace = null,Object? partnerName = null,Object? birthDay = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,residencePlace: null == residencePlace ? _self.residencePlace : residencePlace // ignore: cast_nullable_to_non_nullable
as String,partnerName: null == partnerName ? _self.partnerName : partnerName // ignore: cast_nullable_to_non_nullable
as String,birthDay: null == birthDay ? _self.birthDay : birthDay // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentModel].
extension StudentModelPatterns on StudentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentModel value)  $default,){
final _that = this;
switch (_that) {
case _StudentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentModel value)?  $default,){
final _that = this;
switch (_that) {
case _StudentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int age,  String gender, @JsonKey(name: 'residence_place')  String residencePlace, @JsonKey(name: 'partner_name')  String partnerName, @JsonKey(name: 'birth_date')  String birthDay)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentModel() when $default != null:
return $default(_that.id,_that.name,_that.age,_that.gender,_that.residencePlace,_that.partnerName,_that.birthDay);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int age,  String gender, @JsonKey(name: 'residence_place')  String residencePlace, @JsonKey(name: 'partner_name')  String partnerName, @JsonKey(name: 'birth_date')  String birthDay)  $default,) {final _that = this;
switch (_that) {
case _StudentModel():
return $default(_that.id,_that.name,_that.age,_that.gender,_that.residencePlace,_that.partnerName,_that.birthDay);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int age,  String gender, @JsonKey(name: 'residence_place')  String residencePlace, @JsonKey(name: 'partner_name')  String partnerName, @JsonKey(name: 'birth_date')  String birthDay)?  $default,) {final _that = this;
switch (_that) {
case _StudentModel() when $default != null:
return $default(_that.id,_that.name,_that.age,_that.gender,_that.residencePlace,_that.partnerName,_that.birthDay);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentModel implements StudentModel {
  const _StudentModel({required this.id, required this.name, required this.age, required this.gender, @JsonKey(name: 'residence_place') required this.residencePlace, @JsonKey(name: 'partner_name') required this.partnerName, @JsonKey(name: 'birth_date') required this.birthDay});
  factory _StudentModel.fromJson(Map<String, dynamic> json) => _$StudentModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  int age;
@override final  String gender;
@override@JsonKey(name: 'residence_place') final  String residencePlace;
@override@JsonKey(name: 'partner_name') final  String partnerName;
@override@JsonKey(name: 'birth_date') final  String birthDay;

/// Create a copy of StudentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentModelCopyWith<_StudentModel> get copyWith => __$StudentModelCopyWithImpl<_StudentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.residencePlace, residencePlace) || other.residencePlace == residencePlace)&&(identical(other.partnerName, partnerName) || other.partnerName == partnerName)&&(identical(other.birthDay, birthDay) || other.birthDay == birthDay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,age,gender,residencePlace,partnerName,birthDay);

@override
String toString() {
  return 'StudentModel(id: $id, name: $name, age: $age, gender: $gender, residencePlace: $residencePlace, partnerName: $partnerName, birthDay: $birthDay)';
}


}

/// @nodoc
abstract mixin class _$StudentModelCopyWith<$Res> implements $StudentModelCopyWith<$Res> {
  factory _$StudentModelCopyWith(_StudentModel value, $Res Function(_StudentModel) _then) = __$StudentModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int age, String gender,@JsonKey(name: 'residence_place') String residencePlace,@JsonKey(name: 'partner_name') String partnerName,@JsonKey(name: 'birth_date') String birthDay
});




}
/// @nodoc
class __$StudentModelCopyWithImpl<$Res>
    implements _$StudentModelCopyWith<$Res> {
  __$StudentModelCopyWithImpl(this._self, this._then);

  final _StudentModel _self;
  final $Res Function(_StudentModel) _then;

/// Create a copy of StudentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? age = null,Object? gender = null,Object? residencePlace = null,Object? partnerName = null,Object? birthDay = null,}) {
  return _then(_StudentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,residencePlace: null == residencePlace ? _self.residencePlace : residencePlace // ignore: cast_nullable_to_non_nullable
as String,partnerName: null == partnerName ? _self.partnerName : partnerName // ignore: cast_nullable_to_non_nullable
as String,birthDay: null == birthDay ? _self.birthDay : birthDay // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
