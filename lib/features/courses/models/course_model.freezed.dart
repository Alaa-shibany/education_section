// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CourseModel {

 int get id; String get name; String get status;@JsonKey(name: 'start_date') String? get startDate;@JsonKey(name: 'finish_date') String? get finishDate;@JsonKey(name: 'first_payment_amount') int get firstPaymentAmount; int get price;@JsonKey(name: 'teacher_salary') int get teacherSalary;@JsonKey(name: 'payment_deadline_days') int get paymentDeadlineDays;@JsonKey(name: 'success_percentage') int get successPercentage; TeacherModel get teacher; SubjectModel get subject;
/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseModelCopyWith<CourseModel> get copyWith => _$CourseModelCopyWithImpl<CourseModel>(this as CourseModel, _$identity);

  /// Serializes this CourseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.finishDate, finishDate) || other.finishDate == finishDate)&&(identical(other.firstPaymentAmount, firstPaymentAmount) || other.firstPaymentAmount == firstPaymentAmount)&&(identical(other.price, price) || other.price == price)&&(identical(other.teacherSalary, teacherSalary) || other.teacherSalary == teacherSalary)&&(identical(other.paymentDeadlineDays, paymentDeadlineDays) || other.paymentDeadlineDays == paymentDeadlineDays)&&(identical(other.successPercentage, successPercentage) || other.successPercentage == successPercentage)&&(identical(other.teacher, teacher) || other.teacher == teacher)&&(identical(other.subject, subject) || other.subject == subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,startDate,finishDate,firstPaymentAmount,price,teacherSalary,paymentDeadlineDays,successPercentage,teacher,subject);

@override
String toString() {
  return 'CourseModel(id: $id, name: $name, status: $status, startDate: $startDate, finishDate: $finishDate, firstPaymentAmount: $firstPaymentAmount, price: $price, teacherSalary: $teacherSalary, paymentDeadlineDays: $paymentDeadlineDays, successPercentage: $successPercentage, teacher: $teacher, subject: $subject)';
}


}

/// @nodoc
abstract mixin class $CourseModelCopyWith<$Res>  {
  factory $CourseModelCopyWith(CourseModel value, $Res Function(CourseModel) _then) = _$CourseModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String status,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'finish_date') String? finishDate,@JsonKey(name: 'first_payment_amount') int firstPaymentAmount, int price,@JsonKey(name: 'teacher_salary') int teacherSalary,@JsonKey(name: 'payment_deadline_days') int paymentDeadlineDays,@JsonKey(name: 'success_percentage') int successPercentage, TeacherModel teacher, SubjectModel subject
});


$TeacherModelCopyWith<$Res> get teacher;$SubjectModelCopyWith<$Res> get subject;

}
/// @nodoc
class _$CourseModelCopyWithImpl<$Res>
    implements $CourseModelCopyWith<$Res> {
  _$CourseModelCopyWithImpl(this._self, this._then);

  final CourseModel _self;
  final $Res Function(CourseModel) _then;

/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? status = null,Object? startDate = freezed,Object? finishDate = freezed,Object? firstPaymentAmount = null,Object? price = null,Object? teacherSalary = null,Object? paymentDeadlineDays = null,Object? successPercentage = null,Object? teacher = null,Object? subject = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,finishDate: freezed == finishDate ? _self.finishDate : finishDate // ignore: cast_nullable_to_non_nullable
as String?,firstPaymentAmount: null == firstPaymentAmount ? _self.firstPaymentAmount : firstPaymentAmount // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,teacherSalary: null == teacherSalary ? _self.teacherSalary : teacherSalary // ignore: cast_nullable_to_non_nullable
as int,paymentDeadlineDays: null == paymentDeadlineDays ? _self.paymentDeadlineDays : paymentDeadlineDays // ignore: cast_nullable_to_non_nullable
as int,successPercentage: null == successPercentage ? _self.successPercentage : successPercentage // ignore: cast_nullable_to_non_nullable
as int,teacher: null == teacher ? _self.teacher : teacher // ignore: cast_nullable_to_non_nullable
as TeacherModel,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectModel,
  ));
}
/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeacherModelCopyWith<$Res> get teacher {
  
  return $TeacherModelCopyWith<$Res>(_self.teacher, (value) {
    return _then(_self.copyWith(teacher: value));
  });
}/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubjectModelCopyWith<$Res> get subject {
  
  return $SubjectModelCopyWith<$Res>(_self.subject, (value) {
    return _then(_self.copyWith(subject: value));
  });
}
}


/// Adds pattern-matching-related methods to [CourseModel].
extension CourseModelPatterns on CourseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseModel value)  $default,){
final _that = this;
switch (_that) {
case _CourseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CourseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String status, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'finish_date')  String? finishDate, @JsonKey(name: 'first_payment_amount')  int firstPaymentAmount,  int price, @JsonKey(name: 'teacher_salary')  int teacherSalary, @JsonKey(name: 'payment_deadline_days')  int paymentDeadlineDays, @JsonKey(name: 'success_percentage')  int successPercentage,  TeacherModel teacher,  SubjectModel subject)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseModel() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.startDate,_that.finishDate,_that.firstPaymentAmount,_that.price,_that.teacherSalary,_that.paymentDeadlineDays,_that.successPercentage,_that.teacher,_that.subject);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String status, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'finish_date')  String? finishDate, @JsonKey(name: 'first_payment_amount')  int firstPaymentAmount,  int price, @JsonKey(name: 'teacher_salary')  int teacherSalary, @JsonKey(name: 'payment_deadline_days')  int paymentDeadlineDays, @JsonKey(name: 'success_percentage')  int successPercentage,  TeacherModel teacher,  SubjectModel subject)  $default,) {final _that = this;
switch (_that) {
case _CourseModel():
return $default(_that.id,_that.name,_that.status,_that.startDate,_that.finishDate,_that.firstPaymentAmount,_that.price,_that.teacherSalary,_that.paymentDeadlineDays,_that.successPercentage,_that.teacher,_that.subject);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String status, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'finish_date')  String? finishDate, @JsonKey(name: 'first_payment_amount')  int firstPaymentAmount,  int price, @JsonKey(name: 'teacher_salary')  int teacherSalary, @JsonKey(name: 'payment_deadline_days')  int paymentDeadlineDays, @JsonKey(name: 'success_percentage')  int successPercentage,  TeacherModel teacher,  SubjectModel subject)?  $default,) {final _that = this;
switch (_that) {
case _CourseModel() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.startDate,_that.finishDate,_that.firstPaymentAmount,_that.price,_that.teacherSalary,_that.paymentDeadlineDays,_that.successPercentage,_that.teacher,_that.subject);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourseModel implements CourseModel {
  const _CourseModel({required this.id, required this.name, required this.status, @JsonKey(name: 'start_date') required this.startDate, @JsonKey(name: 'finish_date') required this.finishDate, @JsonKey(name: 'first_payment_amount') required this.firstPaymentAmount, required this.price, @JsonKey(name: 'teacher_salary') required this.teacherSalary, @JsonKey(name: 'payment_deadline_days') required this.paymentDeadlineDays, @JsonKey(name: 'success_percentage') required this.successPercentage, required this.teacher, required this.subject});
  factory _CourseModel.fromJson(Map<String, dynamic> json) => _$CourseModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String status;
@override@JsonKey(name: 'start_date') final  String? startDate;
@override@JsonKey(name: 'finish_date') final  String? finishDate;
@override@JsonKey(name: 'first_payment_amount') final  int firstPaymentAmount;
@override final  int price;
@override@JsonKey(name: 'teacher_salary') final  int teacherSalary;
@override@JsonKey(name: 'payment_deadline_days') final  int paymentDeadlineDays;
@override@JsonKey(name: 'success_percentage') final  int successPercentage;
@override final  TeacherModel teacher;
@override final  SubjectModel subject;

/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseModelCopyWith<_CourseModel> get copyWith => __$CourseModelCopyWithImpl<_CourseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.finishDate, finishDate) || other.finishDate == finishDate)&&(identical(other.firstPaymentAmount, firstPaymentAmount) || other.firstPaymentAmount == firstPaymentAmount)&&(identical(other.price, price) || other.price == price)&&(identical(other.teacherSalary, teacherSalary) || other.teacherSalary == teacherSalary)&&(identical(other.paymentDeadlineDays, paymentDeadlineDays) || other.paymentDeadlineDays == paymentDeadlineDays)&&(identical(other.successPercentage, successPercentage) || other.successPercentage == successPercentage)&&(identical(other.teacher, teacher) || other.teacher == teacher)&&(identical(other.subject, subject) || other.subject == subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,startDate,finishDate,firstPaymentAmount,price,teacherSalary,paymentDeadlineDays,successPercentage,teacher,subject);

@override
String toString() {
  return 'CourseModel(id: $id, name: $name, status: $status, startDate: $startDate, finishDate: $finishDate, firstPaymentAmount: $firstPaymentAmount, price: $price, teacherSalary: $teacherSalary, paymentDeadlineDays: $paymentDeadlineDays, successPercentage: $successPercentage, teacher: $teacher, subject: $subject)';
}


}

/// @nodoc
abstract mixin class _$CourseModelCopyWith<$Res> implements $CourseModelCopyWith<$Res> {
  factory _$CourseModelCopyWith(_CourseModel value, $Res Function(_CourseModel) _then) = __$CourseModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String status,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'finish_date') String? finishDate,@JsonKey(name: 'first_payment_amount') int firstPaymentAmount, int price,@JsonKey(name: 'teacher_salary') int teacherSalary,@JsonKey(name: 'payment_deadline_days') int paymentDeadlineDays,@JsonKey(name: 'success_percentage') int successPercentage, TeacherModel teacher, SubjectModel subject
});


@override $TeacherModelCopyWith<$Res> get teacher;@override $SubjectModelCopyWith<$Res> get subject;

}
/// @nodoc
class __$CourseModelCopyWithImpl<$Res>
    implements _$CourseModelCopyWith<$Res> {
  __$CourseModelCopyWithImpl(this._self, this._then);

  final _CourseModel _self;
  final $Res Function(_CourseModel) _then;

/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? status = null,Object? startDate = freezed,Object? finishDate = freezed,Object? firstPaymentAmount = null,Object? price = null,Object? teacherSalary = null,Object? paymentDeadlineDays = null,Object? successPercentage = null,Object? teacher = null,Object? subject = null,}) {
  return _then(_CourseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,finishDate: freezed == finishDate ? _self.finishDate : finishDate // ignore: cast_nullable_to_non_nullable
as String?,firstPaymentAmount: null == firstPaymentAmount ? _self.firstPaymentAmount : firstPaymentAmount // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,teacherSalary: null == teacherSalary ? _self.teacherSalary : teacherSalary // ignore: cast_nullable_to_non_nullable
as int,paymentDeadlineDays: null == paymentDeadlineDays ? _self.paymentDeadlineDays : paymentDeadlineDays // ignore: cast_nullable_to_non_nullable
as int,successPercentage: null == successPercentage ? _self.successPercentage : successPercentage // ignore: cast_nullable_to_non_nullable
as int,teacher: null == teacher ? _self.teacher : teacher // ignore: cast_nullable_to_non_nullable
as TeacherModel,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectModel,
  ));
}

/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeacherModelCopyWith<$Res> get teacher {
  
  return $TeacherModelCopyWith<$Res>(_self.teacher, (value) {
    return _then(_self.copyWith(teacher: value));
  });
}/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubjectModelCopyWith<$Res> get subject {
  
  return $SubjectModelCopyWith<$Res>(_self.subject, (value) {
    return _then(_self.copyWith(subject: value));
  });
}
}

// dart format on
