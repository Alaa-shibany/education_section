// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StudentModel _$StudentModelFromJson(Map<String, dynamic> json) =>
    _StudentModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      gender: json['gender'] as String,
      residencePlace: json['residence_place'] as String,
      partnerName: json['partner_name'] as String,
      birthDay: json['birth_date'] as String,
    );

Map<String, dynamic> _$StudentModelToJson(_StudentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'gender': instance.gender,
      'residence_place': instance.residencePlace,
      'partner_name': instance.partnerName,
      'birth_date': instance.birthDay,
    };
