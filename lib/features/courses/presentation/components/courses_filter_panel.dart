import 'package:courses/features/courses/cubits/get_courses_cubit/get_courses_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class CoursesFilterPanel extends StatelessWidget {
  const CoursesFilterPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final coursesCubit = context.read<GetCoursesCubit>();

    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Advanced Filters',
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(height: 32),

            TextField(
              controller: coursesCubit.searchNameController,
              decoration: InputDecoration(
                labelText: 'Filter by Course Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: coursesCubit.searchSubjectController,
              decoration: InputDecoration(
                labelText: 'Filter by subject name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: coursesCubit.searchTeacherController,
              decoration: InputDecoration(
                labelText: 'Filter by teacher name',

                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            const Spacer(),

            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      coursesCubit.refreshFilters();
                    },
                    child: const Text('Clear'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: FilledButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      coursesCubit.pagingController.refresh();
                    },
                    child: const Text('Apply'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
