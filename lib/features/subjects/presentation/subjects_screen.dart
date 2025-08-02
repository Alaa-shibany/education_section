import 'package:courses/core/services/status.dart';
import 'package:courses/features/subjects/cubits/get_subjects_cubit/get_subjects_cubit.dart';
import 'package:courses/features/subjects/presentation/components/manage_subject_dialog.dart';
import 'package:courses/features/subjects/presentation/components/subject_list_item.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:courses/shared/components/error_widget.dart';
import 'package:courses/shared/components/loading_widget.dart';
import 'package:courses/shared/dialogs/delete_dailogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubjectsScreen extends StatelessWidget {
  const SubjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final subjectsCubit = context.read<GetSubjectsCubit>();
    final translator = AppLocalizations.of(context)!;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          spacing: 15,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: subjectsCubit.searchController,
                    onSubmitted: (value) {
                      subjectsCubit.getSubjects();
                    },
                    decoration: InputDecoration(
                      hintText:
                          '${translator.search} ${translator.subjects}...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                FilledButton.icon(
                  onPressed: () {
                    showManageSubjectDialog(context, subjectsCubit);
                  },
                  icon: const Icon(Icons.add),
                  label: Text(translator.add_new),
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
            BlocBuilder<GetSubjectsCubit, GetSubjectsState>(
              builder: (context, state) {
                return state.status == SubmissionStatus.loading
                    ? LoadingWidget()
                    : state.status == SubmissionStatus.error
                    ? ShowErrorWidget(
                        onPressed: () async {
                          await subjectsCubit.getSubjects();
                        },
                      )
                    : state.data!.isEmpty
                    ? Text('No data')
                    : Expanded(
                        child:
                            ListView.builder(
                                  itemCount: state.data!.length,
                                  itemBuilder: (context, index) {
                                    final item = state.data![index];
                                    return SubjectListItem(
                                      subjectItem: item,
                                      onEdit: () {
                                        showManageSubjectDialog(
                                          context,
                                          subjectsCubit,
                                          subject: item,
                                        );
                                      },
                                      onDelete: () {
                                        showDeleteConfirmationDialog(
                                          context,
                                          item.name,
                                          () {},
                                        );
                                      },
                                    );
                                  },
                                )
                                .animate()
                                .fade(
                                  duration: const Duration(milliseconds: 500),
                                )
                                .slideY(
                                  begin: 0.1,
                                  end: 0,
                                  duration: const Duration(milliseconds: 300),
                                ),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
