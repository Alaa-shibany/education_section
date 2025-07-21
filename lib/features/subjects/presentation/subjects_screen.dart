import 'package:courses/features/subjects/cubit/subjects_cubit.dart';
import 'package:courses/features/subjects/models/subject_model.dart';
import 'package:courses/features/subjects/presentation/components/manage_subject_dialog.dart';
import 'package:courses/features/subjects/presentation/components/subject_list_item.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:courses/shared/dialogs/dailogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class SubjectsScreen extends StatelessWidget {
  const SubjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final subjectsCubit = context.read<SubjectsCubit>();
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
                      subjectsCubit.pagingController.refresh();
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
                    showManageSubjectDialog(context);
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
            Expanded(
              child: PagingListener(
                controller: subjectsCubit.pagingController,
                builder: (context, state, fetchNextPage) =>
                    PagedListView<int, SubjectModel>(
                      padding: EdgeInsets.zero,
                      state: state,
                      fetchNextPage: fetchNextPage,
                      builderDelegate: PagedChildBuilderDelegate(
                        itemBuilder: (context, item, index) => SubjectListItem(
                          subjectItem: item,
                          onEdit: () {
                            showManageSubjectDialog(context, subject: item);
                          },
                          onDelete: () {
                            showDeleteConfirmationDialog(
                              context,
                              item.name,
                              () {},
                            );
                          },
                        ),
                      ),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
