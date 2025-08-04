import 'package:courses/features/session_profile/cubits/get_session_profile_cubit/get_session_profile_cubit.dart';
import 'package:courses/features/session_profile/presentation/components/manage_quiz_dialog.dart';
import 'package:courses/features/session_profile/presentation/components/quiz_list_item.dart';
import 'package:courses/helper/text_feilds.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SessionQuizzes extends StatelessWidget {
  const SessionQuizzes({super.key});

  @override
  Widget build(BuildContext context) {
    final sessionProfileCubit = context.read<GetSessionProfileCubit>();
    final translator = AppLocalizations.of(context)!;
    return Column(
      children: [
        Row(
          spacing: 10,
          children: [
            Expanded(flex: 8, child: buildSectionHeader(context, 'Quizzes')),
            Expanded(
              child: FilledButton.icon(
                onPressed: () {
                  showManageQuizDialog(context, sessionProfileCubit);
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
            ),
          ],
        ),
        BlocBuilder<GetSessionProfileCubit, GetSessionProfileState>(
          builder: (context, state) {
            return state.data!.quizzes.isEmpty
                ? Text('No data')
                : ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.data!.quizzes.length,
                        itemBuilder: (context, index) {
                          final item = state.data!.quizzes[index];
                          return QuizListItem(
                            quizItem: item,
                            onDelete: () {},
                            onEdit: () {},
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
