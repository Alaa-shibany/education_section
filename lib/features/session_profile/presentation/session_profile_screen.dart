import 'package:courses/core/services/status.dart';
import 'package:courses/features/session_profile/cubits/get_session_profile_cubit/get_session_profile_cubit.dart';
import 'package:courses/features/session_profile/presentation/components/session_Quizzes.dart';
import 'package:courses/features/session_profile/presentation/components/session_homeworks.dart';
import 'package:courses/shared/components/error_widget.dart'
    show ShowErrorWidget;
import 'package:courses/shared/components/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SessionProfileScreen extends StatelessWidget {
  const SessionProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GetSessionProfileCubit, GetSessionProfileState>(
        builder: (context, state) {
          return state.status == SubmissionStatus.loading
              ? LoadingWidget()
              : state.status == SubmissionStatus.error
              ? ShowErrorWidget(
                  onPressed: () async {
                    await context
                        .read<GetSessionProfileCubit>()
                        .getSessionProfile(session: state.session!.id);
                  },
                )
              : Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 40),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [SessionHomeworks(), SessionQuizzes()],
                    ),
                  ),
                );
        },
      ),
    );
  }
}
