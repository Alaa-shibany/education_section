import 'package:courses/features/teachers/cubit/teachers_cubit/teachers_cubit.dart';
import 'package:courses/features/teachers/models/teacher_model.dart';
import 'package:courses/features/teachers/presentation/components/manage_teacher_dialog.dart';
import 'package:courses/features/teachers/presentation/components/teacher_list_item.dart';
import 'package:courses/features/teachers/presentation/components/teachers_filter_panel.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:courses/shared/dialogs/delete_dailogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class TeachersScreen extends StatefulWidget {
  const TeachersScreen({super.key});

  @override
  State<TeachersScreen> createState() => _TeachersScreenState();
}

class _TeachersScreenState extends State<TeachersScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final teachersCubit = context.read<TeachersCubit>();
    final translator = AppLocalizations.of(context)!;
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const TeacherFilterPanel(),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),

        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: teachersCubit.searchController,
                    onSubmitted: (value) {
                      teachersCubit.pagingController.refresh();
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
                    showManageTeacherDialog(context);
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

                const SizedBox(width: 8),

                BlocBuilder<TeachersCubit, TeachersState>(
                  builder: (context, state) {
                    print('rebuild');
                    return Badge(
                      isLabelVisible: teachersCubit.badgeCount > 0,
                      label: Text(teachersCubit.badgeCount.toString()),
                      child: IconButton.filled(
                        onPressed: () =>
                            _scaffoldKey.currentState?.openEndDrawer(),
                        icon: const Icon(Icons.filter_list),
                        tooltip: 'Advanced Filters',
                      ),
                    );
                  },
                ),
              ],
            ),

            const SizedBox(height: 24),
            Expanded(
              child: PagingListener(
                controller: teachersCubit.pagingController,
                builder: (context, state, fetchNextPage) =>
                    PagedListView<int, teacherModel>(
                      padding: EdgeInsets.zero,
                      state: state,
                      fetchNextPage: fetchNextPage,
                      builderDelegate: PagedChildBuilderDelegate(
                        itemBuilder: (context, item, index) => TeacherListItem(
                          subjectItem: item,
                          onEdit: () {
                            showManageTeacherDialog(context, teacher: item);
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
              ).animate().fade(duration: const Duration(milliseconds: 500)),
            ),
          ],
        ),
      ),
    );
  }
}
