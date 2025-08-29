part of 'get_students_cubit.dart';

@freezed
abstract class GetStudentsState with _$GetStudentsState {
  const factory GetStudentsState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    PaginationModel<StudentModel>? data,
    Failure? failure,
  }) = _CreateTeacherState; 
}