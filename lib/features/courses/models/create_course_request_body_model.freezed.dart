// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_course_request_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateCourseRequestBodyModel {

 int get subject_id; int get teacher_id; String get name; String get start_date; String get finish_date; int get price; int get first_payment_amount; int get teacher_salary; int get payment_deadline_days; int get success_percentage; List get sessions;
/// Create a copy of CreateCourseRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCourseRequestBodyModelCopyWith<CreateCourseRequestBodyModel> get copyWith => _$CreateCourseRequestBodyModelCopyWithImpl<CreateCourseRequestBodyModel>(this as CreateCourseRequestBodyModel, _$identity);

  /// Serializes this CreateCourseRequestBodyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCourseRequestBodyModel&&(identical(other.subject_id, subject_id) || other.subject_id == subject_id)&&(identical(other.teacher_id, teacher_id) || other.teacher_id == teacher_id)&&(identical(other.name, name) || other.name == name)&&(identical(other.start_date, start_date) || other.start_date == start_date)&&(identical(other.finish_date, finish_date) || other.finish_date == finish_date)&&(identical(other.price, price) || other.price == price)&&(identical(other.first_payment_amount, first_payment_amount) || other.first_payment_amount == first_payment_amount)&&(identical(other.teacher_salary, teacher_salary) || other.teacher_salary == teacher_salary)&&(identical(other.payment_deadline_days, payment_deadline_days) || other.payment_deadline_days == payment_deadline_days)&&(identical(other.success_percentage, success_percentage) || other.success_percentage == success_percentage)&&const DeepCollectionEquality().equals(other.sessions, sessions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subject_id,teacher_id,name,start_date,finish_date,price,first_payment_amount,teacher_salary,payment_deadline_days,success_percentage,const DeepCollectionEquality().hash(sessions));

@override
String toString() {
  return 'CreateCourseRequestBodyModel(subject_id: $subject_id, teacher_id: $teacher_id, name: $name, start_date: $start_date, finish_date: $finish_date, price: $price, first_payment_amount: $first_payment_amount, teacher_salary: $teacher_salary, payment_deadline_days: $payment_deadline_days, success_percentage: $success_percentage, sessions: $sessions)';
}


}

/// @nodoc
abstract mixin class $CreateCourseRequestBodyModelCopyWith<$Res>  {
  factory $CreateCourseRequestBodyModelCopyWith(CreateCourseRequestBodyModel value, $Res Function(CreateCourseRequestBodyModel) _then) = _$CreateCourseRequestBodyModelCopyWithImpl;
@useResult
$Res call({
 int subject_id, int teacher_id, String name, String start_date, String finish_date, int price, int first_payment_amount, int teacher_salary, int payment_deadline_days, int success_percentage, List sessions
});




}
/// @nodoc
class _$CreateCourseRequestBodyModelCopyWithImpl<$Res>
    implements $CreateCourseRequestBodyModelCopyWith<$Res> {
  _$CreateCourseRequestBodyModelCopyWithImpl(this._self, this._then);

  final CreateCourseRequestBodyModel _self;
  final $Res Function(CreateCourseRequestBodyModel) _then;

/// Create a copy of CreateCourseRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subject_id = null,Object? teacher_id = null,Object? name = null,Object? start_date = null,Object? finish_date = null,Object? price = null,Object? first_payment_amount = null,Object? teacher_salary = null,Object? payment_deadline_days = null,Object? success_percentage = null,Object? sessions = null,}) {
  return _then(_self.copyWith(
subject_id: null == subject_id ? _self.subject_id : subject_id // ignore: cast_nullable_to_non_nullable
as int,teacher_id: null == teacher_id ? _self.teacher_id : teacher_id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,start_date: null == start_date ? _self.start_date : start_date // ignore: cast_nullable_to_non_nullable
as String,finish_date: null == finish_date ? _self.finish_date : finish_date // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,first_payment_amount: null == first_payment_amount ? _self.first_payment_amount : first_payment_amount // ignore: cast_nullable_to_non_nullable
as int,teacher_salary: null == teacher_salary ? _self.teacher_salary : teacher_salary // ignore: cast_nullable_to_non_nullable
as int,payment_deadline_days: null == payment_deadline_days ? _self.payment_deadline_days : payment_deadline_days // ignore: cast_nullable_to_non_nullable
as int,success_percentage: null == success_percentage ? _self.success_percentage : success_percentage // ignore: cast_nullable_to_non_nullable
as int,sessions: null == sessions ? _self.sessions : sessions // ignore: cast_nullable_to_non_nullable
as List,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCourseRequestBodyModel].
extension CreateCourseRequestBodyModelPatterns on CreateCourseRequestBodyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCourseRequestBodyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCourseRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCourseRequestBodyModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateCourseRequestBodyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCourseRequestBodyModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCourseRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int subject_id,  int teacher_id,  String name,  String start_date,  String finish_date,  int price,  int first_payment_amount,  int teacher_salary,  int payment_deadline_days,  int success_percentage,  List sessions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCourseRequestBodyModel() when $default != null:
return $default(_that.subject_id,_that.teacher_id,_that.name,_that.start_date,_that.finish_date,_that.price,_that.first_payment_amount,_that.teacher_salary,_that.payment_deadline_days,_that.success_percentage,_that.sessions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int subject_id,  int teacher_id,  String name,  String start_date,  String finish_date,  int price,  int first_payment_amount,  int teacher_salary,  int payment_deadline_days,  int success_percentage,  List sessions)  $default,) {final _that = this;
switch (_that) {
case _CreateCourseRequestBodyModel():
return $default(_that.subject_id,_that.teacher_id,_that.name,_that.start_date,_that.finish_date,_that.price,_that.first_payment_amount,_that.teacher_salary,_that.payment_deadline_days,_that.success_percentage,_that.sessions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int subject_id,  int teacher_id,  String name,  String start_date,  String finish_date,  int price,  int first_payment_amount,  int teacher_salary,  int payment_deadline_days,  int success_percentage,  List sessions)?  $default,) {final _that = this;
switch (_that) {
case _CreateCourseRequestBodyModel() when $default != null:
return $default(_that.subject_id,_that.teacher_id,_that.name,_that.start_date,_that.finish_date,_that.price,_that.first_payment_amount,_that.teacher_salary,_that.payment_deadline_days,_that.success_percentage,_that.sessions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateCourseRequestBodyModel implements CreateCourseRequestBodyModel {
  const _CreateCourseRequestBodyModel({required this.subject_id, required this.teacher_id, required this.name, required this.start_date, required this.finish_date, required this.price, required this.first_payment_amount, required this.teacher_salary, required this.payment_deadline_days, required this.success_percentage, required final  List sessions}): _sessions = sessions;
  factory _CreateCourseRequestBodyModel.fromJson(Map<String, dynamic> json) => _$CreateCourseRequestBodyModelFromJson(json);

@override final  int subject_id;
@override final  int teacher_id;
@override final  String name;
@override final  String start_date;
@override final  String finish_date;
@override final  int price;
@override final  int first_payment_amount;
@override final  int teacher_salary;
@override final  int payment_deadline_days;
@override final  int success_percentage;
 final  List _sessions;
@override List get sessions {
  if (_sessions is EqualUnmodifiableListView) return _sessions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sessions);
}


/// Create a copy of CreateCourseRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCourseRequestBodyModelCopyWith<_CreateCourseRequestBodyModel> get copyWith => __$CreateCourseRequestBodyModelCopyWithImpl<_CreateCourseRequestBodyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateCourseRequestBodyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCourseRequestBodyModel&&(identical(other.subject_id, subject_id) || other.subject_id == subject_id)&&(identical(other.teacher_id, teacher_id) || other.teacher_id == teacher_id)&&(identical(other.name, name) || other.name == name)&&(identical(other.start_date, start_date) || other.start_date == start_date)&&(identical(other.finish_date, finish_date) || other.finish_date == finish_date)&&(identical(other.price, price) || other.price == price)&&(identical(other.first_payment_amount, first_payment_amount) || other.first_payment_amount == first_payment_amount)&&(identical(other.teacher_salary, teacher_salary) || other.teacher_salary == teacher_salary)&&(identical(other.payment_deadline_days, payment_deadline_days) || other.payment_deadline_days == payment_deadline_days)&&(identical(other.success_percentage, success_percentage) || other.success_percentage == success_percentage)&&const DeepCollectionEquality().equals(other._sessions, _sessions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subject_id,teacher_id,name,start_date,finish_date,price,first_payment_amount,teacher_salary,payment_deadline_days,success_percentage,const DeepCollectionEquality().hash(_sessions));

@override
String toString() {
  return 'CreateCourseRequestBodyModel(subject_id: $subject_id, teacher_id: $teacher_id, name: $name, start_date: $start_date, finish_date: $finish_date, price: $price, first_payment_amount: $first_payment_amount, teacher_salary: $teacher_salary, payment_deadline_days: $payment_deadline_days, success_percentage: $success_percentage, sessions: $sessions)';
}


}

/// @nodoc
abstract mixin class _$CreateCourseRequestBodyModelCopyWith<$Res> implements $CreateCourseRequestBodyModelCopyWith<$Res> {
  factory _$CreateCourseRequestBodyModelCopyWith(_CreateCourseRequestBodyModel value, $Res Function(_CreateCourseRequestBodyModel) _then) = __$CreateCourseRequestBodyModelCopyWithImpl;
@override @useResult
$Res call({
 int subject_id, int teacher_id, String name, String start_date, String finish_date, int price, int first_payment_amount, int teacher_salary, int payment_deadline_days, int success_percentage, List sessions
});




}
/// @nodoc
class __$CreateCourseRequestBodyModelCopyWithImpl<$Res>
    implements _$CreateCourseRequestBodyModelCopyWith<$Res> {
  __$CreateCourseRequestBodyModelCopyWithImpl(this._self, this._then);

  final _CreateCourseRequestBodyModel _self;
  final $Res Function(_CreateCourseRequestBodyModel) _then;

/// Create a copy of CreateCourseRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subject_id = null,Object? teacher_id = null,Object? name = null,Object? start_date = null,Object? finish_date = null,Object? price = null,Object? first_payment_amount = null,Object? teacher_salary = null,Object? payment_deadline_days = null,Object? success_percentage = null,Object? sessions = null,}) {
  return _then(_CreateCourseRequestBodyModel(
subject_id: null == subject_id ? _self.subject_id : subject_id // ignore: cast_nullable_to_non_nullable
as int,teacher_id: null == teacher_id ? _self.teacher_id : teacher_id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,start_date: null == start_date ? _self.start_date : start_date // ignore: cast_nullable_to_non_nullable
as String,finish_date: null == finish_date ? _self.finish_date : finish_date // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,first_payment_amount: null == first_payment_amount ? _self.first_payment_amount : first_payment_amount // ignore: cast_nullable_to_non_nullable
as int,teacher_salary: null == teacher_salary ? _self.teacher_salary : teacher_salary // ignore: cast_nullable_to_non_nullable
as int,payment_deadline_days: null == payment_deadline_days ? _self.payment_deadline_days : payment_deadline_days // ignore: cast_nullable_to_non_nullable
as int,success_percentage: null == success_percentage ? _self.success_percentage : success_percentage // ignore: cast_nullable_to_non_nullable
as int,sessions: null == sessions ? _self._sessions : sessions // ignore: cast_nullable_to_non_nullable
as List,
  ));
}


}

// dart format on
