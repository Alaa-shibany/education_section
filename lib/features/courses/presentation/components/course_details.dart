import 'package:courses/core/services/status.dart';
import 'package:courses/features/courses/cubits/create_course_cubit/create_course_cubit.dart';
import 'package:courses/features/courses/presentation/helper/text_feilds.dart';
import 'package:courses/features/subjects/cubits/get_subjects_cubit/get_subjects_cubit.dart';
import 'package:courses/features/subjects/models/subject_model.dart';
import 'package:courses/features/teachers/cubits/get_teachers_cubit/get_teachers_cubit.dart';
import 'package:courses/features/teachers/models/teacher_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({
    super.key,
    required this.nameController,
    required this.subjectSearchController,
    required this.teacherSearchController,
    required this.selectedTeacher,
    required this.selectedSubject,
  });
  final TextEditingController nameController;
  final SearchController subjectSearchController;
  final SearchController teacherSearchController;
  final ValueNotifier<TeacherModel?> selectedTeacher;
  final ValueNotifier<SubjectModel?> selectedSubject;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildSectionHeader(context, 'Course Details'),
        TextFormField(
          controller: nameController,
          decoration: buildInputDecoration(
            label: 'Course Name',
            icon: Icons.school_outlined,
          ),
          validator: (v) =>
              (v == null || v.trim().isEmpty) ? 'Please enter a name' : null,
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: _buildSubjectSelector(
                selectedSubject,
                subjectSearchController,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: _buildTeacherSelector(
                selectedTeacher,
                teacherSearchController,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        _buildDailySessionCheckbox(context: context),
      ],
    );
  }

  Widget _buildDailySessionCheckbox({required BuildContext context}) {
    final cerateCourseCubit = context.read<CreateCourseCubit>();

    return BlocBuilder<CreateCourseCubit, CreateCourseState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).unselectedWidgetColor,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: CheckboxListTile(
            title: const Text('Daily Session'),
            subtitle: Text(
              cerateCourseCubit.state.isDaily
                  ? 'Sessions will be scheduled daily'
                  : 'Manually add sessions below',
              style: TextStyle(fontSize: 12),
            ),
            value: cerateCourseCubit.state.isDaily,
            onChanged: (bool? newValue) {
              cerateCourseCubit.changeIsDaily();
            },
            secondary: const Icon(Icons.repeat_on_outlined),
            controlAffinity: ListTileControlAffinity.leading,
            activeColor: Theme.of(context).colorScheme.primary,
          ),
        );
      },
    );
  }

  Widget _buildTeacherSelector(
    ValueNotifier<TeacherModel?> selectedTeacher,
    SearchController controller,
  ) {
    return BlocBuilder<GetTeachersCubit, GetTeachersState>(
      builder: (context, state) {
        if (state.status == SubmissionStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        return ValueListenableBuilder<TeacherModel?>(
          valueListenable: selectedTeacher,
          builder: (context, teacherValue, child) {
            return SearchAnchor(
              searchController: controller,
              builder: (context, searchController) {
                return TextFormField(
                  controller: searchController,
                  readOnly: true,
                  decoration: buildInputDecoration(
                    label: 'Teacher',
                    icon: Icons.person_outline,
                  ).copyWith(hintText: teacherValue?.name ?? 'Select Teacher'),
                  onTap: () => searchController.openView(),
                  validator: (_) =>
                      teacherValue == null ? 'Please select a teacher' : null,
                );
              },
              suggestionsBuilder: (context, searchController) {
                final filtered = state.data!.items.where(
                  (teacher) => teacher.name.toLowerCase().contains(
                    searchController.text.toLowerCase(),
                  ),
                );

                return filtered.map(
                  (teacher) => ListTile(
                    title: Text(teacher.name),
                    onTap: () {
                      selectedTeacher.value = teacher;
                      searchController.closeView(teacher.name);
                    },
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  Widget _buildSubjectSelector(
    ValueNotifier<SubjectModel?> selectedSubject,
    SearchController controller,
  ) {
    return BlocBuilder<GetSubjectsCubit, GetSubjectsState>(
      builder: (context, state) {
        if (state.status == SubmissionStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        return ValueListenableBuilder<SubjectModel?>(
          valueListenable: selectedSubject,
          builder: (context, subjectValue, child) {
            return SearchAnchor(
              searchController: controller,
              builder: (context, searchController) {
                return TextFormField(
                  controller: searchController,
                  readOnly: true,
                  decoration: buildInputDecoration(
                    label: 'Subject',
                    icon: Icons.book_outlined,
                  ).copyWith(hintText: subjectValue?.name ?? 'Select Subject'),
                  onTap: () => searchController.openView(),
                  validator: (_) =>
                      subjectValue == null ? 'Please select a subject' : null,
                );
              },
              suggestionsBuilder: (context, searchController) {
                final filtered =
                    state.data?.where(
                      (s) => s.name.toLowerCase().contains(
                        searchController.text.toLowerCase(),
                      ),
                    ) ??
                    [];
                return filtered.map(
                  (subject) => ListTile(
                    title: Text(subject.name),
                    onTap: () {
                      selectedSubject.value = subject;
                      searchController.closeView(subject.name);
                    },
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
