import 'package:courses/core/services/service_locator.dart';
import 'package:courses/core/services/status.dart';
import 'package:courses/features/session_profile/cubits/create_quiz_cubit/create_quiz_cubit.dart';
import 'package:courses/features/session_profile/cubits/get_session_profile_cubit/get_session_profile_cubit.dart';
import 'package:courses/features/session_profile/models/create_quiz_request_body_model.dart';

import 'package:courses/l10n/app_localizations.dart';
import 'package:courses/shared/dialogs/loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void showManageQuizDialog(
  BuildContext context,
  GetSessionProfileCubit sessionProfileCubit,
) {
  final translator = AppLocalizations.of(context)!;
  final _formKey = GlobalKey<FormState>();

  final _descriptionController = TextEditingController();
  final _goalController = TextEditingController();
  final _successMarkController = TextEditingController();

  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: "Create Quiz",
    transitionDuration: const Duration(milliseconds: 400),
    pageBuilder: (context, anim1, anim2) => const SizedBox(),
    transitionBuilder: (context, anim1, anim2, child) {
      return MultiBlocProvider(
        providers: [BlocProvider(create: (context) => sl<CreateQuizCubit>())],
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
                "Create Quiz", // Static title, no editing
                style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
              ),
              content: SizedBox(
                width:
                    MediaQuery.of(context).size.width * 0.4, // Adjusted width
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 500, // Adjusted constraints
                  ),
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
                            // == Quiz Fields ==
                            TextFormField(
                              controller: _descriptionController,
                              decoration: const InputDecoration(
                                labelText: 'Description',
                                border: OutlineInputBorder(),
                              ),
                              maxLines: 3,
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
                            const SizedBox(height: 16),
                            TextFormField(
                              controller: _successMarkController,
                              decoration: const InputDecoration(
                                labelText: 'Success Mark',
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter the success mark';
                                }
                                if (int.tryParse(value) == null) {
                                  return 'Please enter a valid number';
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
                BlocConsumer<CreateQuizCubit, CreateQuizState>(
                  listener: (context, state) {
                    if (state.status == SubmissionStatus.loading) {
                      showLoadingDialog(context);
                    } else if (state.status == SubmissionStatus.error) {
                      Navigator.pop(context); // Close loading dialog
                      state.failure!.handle(context, onRetry: () {});
                    } else if (state.status == SubmissionStatus.success) {
                      Navigator.pop(context); // Close loading dialog
                      Navigator.pop(context); // Close create quiz dialog
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
                          final body = CreateQuizRequestBodyModel(
                            description: _descriptionController.text,
                            course_session_id:
                                sessionProfileCubit.state.session!.id,
                            goal: _goalController.text,
                            success_mark: int.parse(
                              _successMarkController.text,
                            ),
                          );
                          context.read<CreateQuizCubit>().createQuiz(
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
