import 'package:courses/features/teachers/cubits/get_teachers_cubit/get_teachers_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class TeacherFilterPanel extends StatelessWidget {
  const TeacherFilterPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final teachersCubit = context.read<GetTeachersCubit>();

    return BlocBuilder<GetTeachersCubit, GetTeachersState>(
      builder: (context, state) {
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
                  controller: state.searchNameController,
                  decoration: InputDecoration(
                    labelText: 'Filter by Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: state.emailNameController,
                  decoration: InputDecoration(
                    labelText: 'Filter by Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: state.phoneNameController,
                  decoration: InputDecoration(
                    labelText: 'Filter by Phone',

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
                          teachersCubit.initState();
                        },
                        child: const Text('Clear'),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: FilledButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          teachersCubit.pagingController.refresh();
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
      },
    );
  }
}
