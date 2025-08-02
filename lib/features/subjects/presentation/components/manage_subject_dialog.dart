import 'package:courses/core/services/service_locator.dart';
import 'package:courses/core/services/status.dart';
import 'package:courses/features/subjects/cubits/create_subject_cubit/create_subject_cubit.dart';
import 'package:courses/features/subjects/cubits/get_subjects_cubit/get_subjects_cubit.dart';
import 'package:courses/features/subjects/cubits/update_subject_cubit/update_subject_cubit.dart';
import 'package:courses/features/subjects/models/create_subject_request_body_model.dart';
import 'package:courses/features/subjects/models/subject_model.dart';
import 'package:courses/features/subjects/models/update_subject_request_body_model.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:courses/shared/dialogs/error_dialog.dart';
import 'package:courses/shared/dialogs/loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void showManageSubjectDialog(
  BuildContext context,
  GetSubjectsCubit subjectsCubit, {
  SubjectModel? subject,
}) {
  final isEditing = subject != null;
  final nameController = TextEditingController(
    text: isEditing ? subject.name : '',
  );
  final formKey = GlobalKey<FormState>();
  final translator = AppLocalizations.of(context)!;

  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: translator.manage_subject,
    transitionDuration: const Duration(milliseconds: 300),
    pageBuilder: (context, anim1, anim2) => const SizedBox(),
    transitionBuilder: (context, anim1, anim2, child) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => sl<CreateSubjectCubit>()),
          BlocProvider(create: (context) => sl<UpdateSubjectCubit>()),
        ],
        child: ScaleTransition(
          scale: Tween<double>(begin: 0.9, end: 1.0).animate(anim1),
          child: FadeTransition(
            opacity: anim1,
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              title: Text(
                isEditing
                    ? translator.edit_subject
                    : translator.add_new_subject,
                style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
              ),
              content: Form(
                key: formKey,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: translator.subject_name,
                      hintText: 'e.g., put any name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                    validator: (value) =>
                        value!.trim().isEmpty ? 'Name cannot be empty' : null,
                  ),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(translator.cancel),
                ),
                !isEditing
                    ? BlocConsumer<CreateSubjectCubit, CreateSubjectState>(
                        listener: (context, state) {
                          if (state.status == SubmissionStatus.loading) {
                            showLoadingDialog(context);
                          } else if (state.status == SubmissionStatus.error) {
                            Navigator.pop(context);

                            showErrorDialog(context, state.errorMessage!);
                          } else if (state.status == SubmissionStatus.success) {
                            Navigator.pop(context);
                            Navigator.pop(context);

                            subjectsCubit.getSubjects();
                          }
                        },
                        builder: (context, state) {
                          return FilledButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                context
                                    .read<CreateSubjectCubit>()
                                    .createSubject(
                                      body: CreateSubjectRequestBodyModel(
                                        name: nameController.text,
                                      ),
                                    );
                              }
                            },
                            child: Text(translator.save),
                          );
                        },
                      )
                    : BlocConsumer<UpdateSubjectCubit, UpdateSubjectState>(
                        listener: (context, state) {
                          if (state.status == SubmissionStatus.loading) {
                            showLoadingDialog(context);
                          } else if (state.status == SubmissionStatus.error) {
                            Navigator.pop(context);

                            showErrorDialog(context, state.errorMessage!);
                          } else if (state.status == SubmissionStatus.success) {
                            Navigator.pop(context);
                            Navigator.pop(context);

                            subjectsCubit.getSubjects();
                          }
                        },
                        builder: (context, state) {
                          return FilledButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                context
                                    .read<UpdateSubjectCubit>()
                                    .updateSubject(
                                      id: subject.id,
                                      body: UpdateSubjectRequestBodyModel(
                                        name: nameController.text,
                                      ),
                                    );
                              }
                            },
                            child: Text(translator.save),
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
