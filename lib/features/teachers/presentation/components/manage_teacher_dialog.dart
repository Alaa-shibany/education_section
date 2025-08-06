import 'package:courses/core/services/service_locator.dart';
import 'package:courses/core/services/status.dart';
import 'package:courses/features/subjects/cubits/get_subjects_cubit/get_subjects_cubit.dart';
import 'package:courses/features/teachers/cubits/create_teacher_cubit/create_teacher_cubit.dart';
import 'package:courses/features/teachers/cubits/get_teachers_cubit/get_teachers_cubit.dart';
import 'package:courses/features/teachers/cubits/update_teacher_cubit/update_teacher_cubit.dart';
import 'package:courses/features/teachers/models/create_teacher_request_body_model.dart';

import 'package:courses/features/teachers/models/teacher_model.dart';
import 'package:courses/features/teachers/models/update_teacher_request_body_model.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:courses/shared/dialogs/error_dialog.dart';
import 'package:courses/shared/dialogs/loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void showManageTeacherDialog(
  BuildContext context,
  GetTeachersCubit teachersCubit, {
  TeacherModel? teacher,
}) {
  final isEditing = teacher != null;
  final _nameController = TextEditingController(
    text: isEditing ? teacher.name : '',
  );
  final _emailController = TextEditingController(
    text: isEditing ? teacher.email : '',
  );
  final _phoneController = TextEditingController(
    text: isEditing ? teacher.phone : '',
  );
  final _subjectController = SearchController();
  final _formKey = GlobalKey<FormState>();
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
          BlocProvider(create: (context) => sl<CreateTeacherCubit>()),
          BlocProvider(create: (context) => sl<UpdateTeacherCubit>()),
          BlocProvider(
            create: (context) => sl<GetSubjectsCubit>()..getSubjects(),
          ),
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
                    ? translator.edit_teacher
                    : translator.add_new_teacher,
                style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
              ),
              content: BlocConsumer<CreateTeacherCubit, CreateTeacherState>(
                listener: (context, state) {},
                builder: (context, state) {
                  final createTeacherCubit = context.read<CreateTeacherCubit>();
                  return SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 700),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFormField(
                                  controller: _nameController,
                                  decoration: const InputDecoration(
                                    labelText: 'Full Name',
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.person_outline),
                                  ),
                                  validator: (v) =>
                                      (v == null || v.trim().isEmpty)
                                      ? 'Please enter a name'
                                      : null,
                                ),
                                const SizedBox(height: 16),
                                TextFormField(
                                  controller: _emailController,
                                  decoration: const InputDecoration(
                                    labelText: 'Email Address',
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.email_outlined),
                                  ),
                                  validator: (v) =>
                                      (v == null ||
                                          !RegExp(r'\S+@\S+\.\S+').hasMatch(v))
                                      ? 'Please enter a valid email'
                                      : null,
                                ),

                                const SizedBox(height: 16),
                                TextFormField(
                                  controller: _phoneController,
                                  decoration: const InputDecoration(
                                    labelText: 'Phone number',
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.email_outlined),
                                  ),
                                  validator: (v) => (v == null)
                                      ? 'Please enter phone number'
                                      : null,
                                ),
                                const SizedBox(height: 32),
                                Text(
                                  'Subjects Taught',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.headlineSmall,
                                ),
                                const SizedBox(height: 16),
                                BlocBuilder<GetSubjectsCubit, GetSubjectsState>(
                                  builder: (context, state) {
                                    return SearchAnchor.bar(
                                      barHintText: 'Select subject',
                                      searchController: _subjectController,
                                      suggestionsBuilder: (context, controller) {
                                        final String input =
                                            controller.value.text;
                                        return state.status ==
                                                SubmissionStatus.success
                                            ? state.data!
                                                  .where(
                                                    (element) => element.name
                                                        .toLowerCase()
                                                        .contains(
                                                          input.toLowerCase(),
                                                        ),
                                                  )
                                                  .map(
                                                    (e) => ListTile(
                                                      title: Text(e.name),
                                                      onTap: () {
                                                        createTeacherCubit
                                                            .addSubject(e);
                                                        _subjectController
                                                            .closeView('');
                                                      },
                                                    ),
                                                  )
                                            : [];
                                      },
                                    );
                                  },
                                ),

                                const SizedBox(height: 16),
                                BlocBuilder<
                                  CreateTeacherCubit,
                                  CreateTeacherState
                                >(
                                  builder: (context, state) {
                                    if (state.selectedBooks.isEmpty) {
                                      return const Text(
                                        'No subjects added yet.',
                                      );
                                    }
                                    return Wrap(
                                      spacing: 8.0,
                                      runSpacing: 8.0,
                                      children: state.selectedBooks.map((
                                        subject,
                                      ) {
                                        return Chip(
                                          label: Text(subject.name),
                                          onDeleted: () => context
                                              .read<CreateTeacherCubit>()
                                              .removeSubject(subject),
                                          deleteIcon: const Icon(
                                            Icons.close,
                                            size: 18,
                                          ),
                                        );
                                      }).toList(),
                                    );
                                  },
                                ),
                                const SizedBox(height: 40),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(translator.cancel),
                ),
                !isEditing
                    ? BlocConsumer<CreateTeacherCubit, CreateTeacherState>(
                        listener: (context, state) {
                          if (state.status == SubmissionStatus.loading) {
                            showLoadingDialog(context);
                          } else if (state.status == SubmissionStatus.error) {
                            Navigator.pop(context);

                            state.failure!.handle(context, onRetry: () {});
                          } else if (state.status == SubmissionStatus.success) {
                            Navigator.pop(context);
                            Navigator.pop(context);

                            teachersCubit.pagingController.refresh();
                          }
                        },
                        builder: (context, state) {
                          return FilledButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                context
                                    .read<CreateTeacherCubit>()
                                    .createTeacher(
                                      body: CreateTeacherRequestBodyModel(
                                        email: _emailController.text,
                                        full_name: _nameController.text,
                                        phone_number: _phoneController.text,
                                        subjects: state.selectedBooks
                                            .map((e) => e.id)
                                            .toList(),
                                      ),
                                    );
                              }
                            },
                            child: Text(translator.save),
                          );
                        },
                      )
                    : BlocConsumer<UpdateTeacherCubit, UpdateTeacherState>(
                        listener: (context, state) {
                          if (state.status == SubmissionStatus.loading) {
                            showLoadingDialog(context);
                          } else if (state.status == SubmissionStatus.error) {
                            Navigator.pop(context);

                            state.failure!.handle(context, onRetry: () {});
                          } else if (state.status == SubmissionStatus.success) {
                            Navigator.pop(context);
                            Navigator.pop(context);

                            teachersCubit.pagingController.refresh();
                          }
                        },
                        builder: (context, state) {
                          return BlocBuilder<
                            CreateTeacherCubit,
                            CreateTeacherState
                          >(
                            builder: (context, state) {
                              return FilledButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    context
                                        .read<UpdateTeacherCubit>()
                                        .updateTeacher(
                                          body: UpdateTeacherRequestBodyModel(
                                            email: _emailController.text,
                                            id: teacher.id,
                                            full_name: _nameController.text,
                                            phone_number: _phoneController.text,
                                            subjects: state.selectedBooks
                                                .map((e) => e.id)
                                                .toList(),
                                          ),
                                        );
                                  }
                                },
                                child: Text(translator.save),
                              );
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
