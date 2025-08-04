import 'package:courses/core/services/service_locator.dart';
import 'package:courses/core/services/status.dart';
import 'package:courses/features/session_profile/cubits/create_homework_cubit/create_homework_cubit.dart';
import 'package:courses/features/session_profile/cubits/get_session_profile_cubit/get_session_profile_cubit.dart';
import 'package:courses/features/session_profile/models/create_homework_request_body_model.dart';

import 'package:courses/l10n/app_localizations.dart';
import 'package:courses/shared/dialogs/error_dialog.dart';
import 'package:courses/shared/dialogs/loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void showManageHomeworkDialog(
  BuildContext context,
  GetSessionProfileCubit sessionProfileCubit,
) {
  final translator = AppLocalizations.of(context)!;
  final _formKey = GlobalKey<FormState>();

  final _descriptionController = TextEditingController();
  final _goalController = TextEditingController();

  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: "Create Homework",
    transitionDuration: const Duration(milliseconds: 400),
    pageBuilder: (context, anim1, anim2) => const SizedBox(),
    transitionBuilder: (context, anim1, anim2, child) {
      return MultiBlocProvider(
        providers: [
          // Provide the cubit for creating homework
          BlocProvider(create: (context) => sl<CreateHomeworkCubit>()),
        ],
        child: ScaleTransition(
          scale: Tween<double>(
            begin: 0.9,
            end: 1.0,
          ).animate(CurvedAnimation(parent: anim1, curve: Curves.easeOutCubic)),
          child: FadeTransition(
            opacity: anim1,
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: Text(
                "Create Homework",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
              ),
              content: SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 500),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 12.0,
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // == Homework Fields ==
                            TextFormField(
                              controller: _descriptionController,
                              decoration: const InputDecoration(
                                labelText: 'Description',
                                border: OutlineInputBorder(),
                              ),
                              maxLines: 4,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a description';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 16),
                            TextFormField(
                              controller: _goalController,
                              decoration: const InputDecoration(
                                labelText: 'Goal',
                                border: OutlineInputBorder(),
                              ),
                              maxLines: 2,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a goal';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(translator.cancel),
                ),
                BlocConsumer<CreateHomeworkCubit, CreateHomeworkState>(
                  listener: (context, state) {
                    if (state.status == SubmissionStatus.loading) {
                      showLoadingDialog(context);
                    } else if (state.status == SubmissionStatus.error) {
                      Navigator.pop(context); // Close loading dialog
                      showErrorDialog(context, state.errorMessage!);
                    } else if (state.status == SubmissionStatus.success) {
                      Navigator.pop(context); // Close loading dialog
                      Navigator.pop(context); // Close create homework dialog
                      sessionProfileCubit.getSessionProfile(
                        session: sessionProfileCubit.state.session!.id,
                      ); // Refresh list
                    }
                  },
                  builder: (context, state) {
                    return FilledButton.icon(
                      icon: const Icon(Icons.save),
                      label: Text(translator.save),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          final body = CreateHomeworkRequestBodyModel(
                            course_id: 1,
                            due_session_id:
                                sessionProfileCubit.state.session!.id,
                            description: _descriptionController.text,
                            goal: _goalController.text,
                          );
                          context.read<CreateHomeworkCubit>().createHomework(
                            body: body,
                          );
                        }
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
