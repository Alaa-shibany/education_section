import 'package:courses/features/teachers/cubit/teachers_cubit/teachers_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class TeacherFilterPanel extends StatelessWidget {
  const TeacherFilterPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final teachersCubit = context.read<TeachersCubit>();

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
              controller: teachersCubit.searchController,
              decoration: InputDecoration(
                labelText: 'Filter by Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: teachersCubit.emailController,
              decoration: InputDecoration(
                labelText: 'Filter by Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: teachersCubit.phoneController,
              decoration: InputDecoration(
                labelText: 'Filter by Phone',

                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            TextField(
              controller: teachersCubit.subjectController,
              enableSuggestions: true,

              decoration: InputDecoration(
                labelText: 'Subject name',

                border: OutlineInputBorder(),
              ),
            ),
            const Spacer(),

            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      teachersCubit.clean();
                    },
                    child: const Text('Clear'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: FilledButton(
                    onPressed: () {
                      Navigator.of(context).pop();
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
