// lib/features/course_profile/presentation/components/course_sessions.dart

import 'package:courses/core/services/status.dart';
import 'package:courses/features/course_profile/cubits/get_sessions_cubit/get_sessions_cubit.dart';
import 'package:courses/features/course_profile/presentation/components/session_list_item.dart';
import 'package:courses/helper/text_feilds.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:courses/shared/components/error_widget.dart';
import 'package:courses/shared/components/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CourseSessions extends StatelessWidget {
  const CourseSessions({super.key});

  @override
  Widget build(BuildContext context) {
    final translator = AppLocalizations.of(context)!;
    return Column(
      children: [
        buildSectionHeader(context, translator.sessions),
        BlocBuilder<GetSessionsCubit, GetSessionsState>(
          builder: (context, state) {
            return state.status == SubmissionStatus.loading
                ? LoadingWidget()
                : state.status == SubmissionStatus.error
                ? ShowErrorWidget(
                    onPressed: () async {
                      await context.read<GetSessionsCubit>().getSessions(
                        courseId: state.course!.id,
                      );
                    },
                  )
                : state.data!.isEmpty
                ? Text('No data')
                // The Expanded widget was removed from here
                : ListView.builder(
                        padding: EdgeInsets.zero, // More concise
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.data!.length,
                        itemBuilder: (context, index) {
                          final item = state.data![index];
                          return SessionListItem(
                            index: index + 1,
                            sessionItem: item,
                            onSync: () {
                              // your logic
                            },
                          );
                        },
                      )
                      .animate()
                      .fade(duration: const Duration(milliseconds: 500))
                      .slideY(
                        begin: 0.1,
                        end: 0,
                        duration: const Duration(milliseconds: 300),
                      );
          },
        ),
      ],
    );
  }
}
