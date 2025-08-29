import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_model.freezed.dart';
part 'student_model.g.dart';

@freezed
abstract class StudentModel with _$StudentModel {
  const factory StudentModel({
    required int id,
    required String name,
    required int age,
    required String gender,
    @JsonKey(name: 'residence_place') required String residencePlace,
    @JsonKey(name: 'partner_name') required String partnerName,
    @JsonKey(name: 'birth_date') required String birthDay,
  }) = _StudentModel;

  factory StudentModel.fromJson(Map<String, dynamic> json) => _$StudentModelFromJson(json);
}
