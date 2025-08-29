import 'package:courses/features/students/cubits/get_students_cubit/get_students_cubit.dart';
import 'package:courses/features/students/presentation/components/student_list_item.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:courses/shared/components/generic_pagenation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StudentsScreen extends StatelessWidget {
  const StudentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final studentsController = context.read<GetStudentsCubit>();
    final translator = AppLocalizations.of(context)!;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),

        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: BlocBuilder<GetStudentsCubit, GetStudentsState>(
                    builder: (context, state) {
                      return TextField(
                        controller: studentsController.nameController,
                        onSubmitted: (value) {
                          studentsController.pagingController.refresh();
                        },
                        decoration: InputDecoration(
                          hintText:
                              '${translator.search} ${translator.student}...',
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),
            GenericPageList(
              pagingController: studentsController.pagingController,
              itemBuilder: (context, item, index) =>
                  StudentListItem(item: item),
            ),
          ],
        ),
      ),
    );
  }
}
