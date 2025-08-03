// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_course_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateCourseRequestBodyModel _$CreateCourseRequestBodyModelFromJson(
  Map<String, dynamic> json,
) => _CreateCourseRequestBodyModel(
  subject_id: (json['subject_id'] as num).toInt(),
  teacher_id: (json['teacher_id'] as num).toInt(),
  name: json['name'] as String,
  start_date: json['start_date'] as String,
  finish_date: json['finish_date'] as String,
  price: (json['price'] as num).toInt(),
  first_payment_amount: (json['first_payment_amount'] as num).toInt(),
  teacher_salary: (json['teacher_salary'] as num).toInt(),
  payment_deadline_days: (json['payment_deadline_days'] as num).toInt(),
  success_percentage: (json['success_percentage'] as num).toInt(),
  sessions: json['sessions'] as List<dynamic>,
);

Map<String, dynamic> _$CreateCourseRequestBodyModelToJson(
  _CreateCourseRequestBodyModel instance,
) => <String, dynamic>{
  'subject_id': instance.subject_id,
  'teacher_id': instance.teacher_id,
  'name': instance.name,
  'start_date': instance.start_date,
  'finish_date': instance.finish_date,
  'price': instance.price,
  'first_payment_amount': instance.first_payment_amount,
  'teacher_salary': instance.teacher_salary,
  'payment_deadline_days': instance.payment_deadline_days,
  'success_percentage': instance.success_percentage,
  'sessions': instance.sessions,
};
