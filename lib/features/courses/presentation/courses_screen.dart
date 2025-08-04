import 'package:courses/core/services/status.dart';
import 'package:courses/features/courses/cubits/get_courses_cubit/get_courses_cubit.dart';
import 'package:courses/features/courses/cubits/update_course_status_cubit/update_course_status_cubit.dart';
import 'package:courses/features/courses/models/course_model.dart';
import 'package:courses/features/courses/presentation/components/course_list_item.dart';
import 'package:courses/features/courses/presentation/components/courses_filter_panel.dart';
import 'package:courses/features/courses/presentation/components/manage_teacher_dialog.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:courses/shared/dialogs/error_dialog.dart';
import 'package:courses/shared/dialogs/loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final coursesCubit = context.read<GetCoursesCubit>();
    final translator = AppLocalizations.of(context)!;
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: CoursesFilterPanel(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),

        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: BlocBuilder<GetCoursesCubit, GetCoursesState>(
                    builder: (context, state) {
                      return TextField(
                        controller: coursesCubit.searchNameController,
                        onSubmitted: (value) {
                          coursesCubit.pagingController.refresh();
                        },
                        decoration: InputDecoration(
                          hintText:
                              '${translator.search} ${translator.subjects}...',
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
                const SizedBox(width: 12),
                FilledButton.icon(
                  onPressed: () {
                    // showManageTeacherDialog(context, teachersCubit);
                    showManageCourseDialog(context, coursesCubit);
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

                BlocBuilder<GetCoursesCubit, GetCoursesState>(
                  builder: (context, state) {
                    return Badge(
                      isLabelVisible: state.badgeCount > 0,
                      label: Text(state.badgeCount.toString()),
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
              child:
                  BlocListener<
                        UpdateCourseStatusCubit,
                        UpdateCourseStatusState
                      >(
                        listener: (context, state) {
                          if (state.status == SubmissionStatus.loading) {
                            showLoadingDialog(context);
                          } else if (state.status == SubmissionStatus.error) {
                            context.pop();
                            showErrorDialog(context, state.errorMessage!);
                          } else if (state.status == SubmissionStatus.success) {
                            context.pop();
                            coursesCubit.pagingController.refresh();
                          }
                        },
                        child: PagingListener(
                          controller: coursesCubit.pagingController,
                          builder: (context, state, fetchNextPage) =>
                              PagedListView<int, CourseModel>(
                                padding: EdgeInsets.zero,
                                state: state,
                                fetchNextPage: fetchNextPage,
                                builderDelegate: PagedChildBuilderDelegate(
                                  itemBuilder: (context, item, index) =>
                                      CourseListItem(
                                        courseItem: item,
                                        onEdit: () {},
                                        onDelete: () {},
                                      ),
                                ),
                              ),
                        ),
                      )
                      .animate()
                      .fade(duration: const Duration(milliseconds: 500)),
            ),
          ],
        ),
      ),
    );
  }
}
