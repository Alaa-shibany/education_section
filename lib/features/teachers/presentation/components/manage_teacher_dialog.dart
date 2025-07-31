import 'package:courses/core/services/service_locator.dart';
import 'package:courses/features/teachers/cubit/create_teacher_cubit/create_teacher_cubit.dart';
import 'package:courses/features/teachers/cubit/update_teacher_cubit/update_teacher_cubit.dart';
import 'package:courses/features/teachers/models/create_teacher_request_body_model.dart';
import 'package:courses/features/teachers/models/teacher_model.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void showManageTeacherDialog(BuildContext context, {teacherModel? teacher}) {
  final isEditing = teacher != null;
  final _nameController = TextEditingController(
    text: isEditing ? teacher.name : '',
  );
  final _emailController = TextEditingController(
    text: isEditing ? teacher.email : '',
  );

  final _subjectController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final translator = AppLocalizations.of(context)!;
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: translator.manage_subject,
    transitionDuration: const Duration(milliseconds: 300),
    pageBuilder: (context, anim1, anim2) => const SizedBox(),
    transitionBuilder: (context, anim1, anim2, child) {
      return ScaleTransition(
        scale: Tween<double>(begin: 0.9, end: 1.0).animate(anim1),

        child: FadeTransition(
          opacity: anim1,
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            title: Text(
              isEditing ? translator.edit_subject : translator.add_new_subject,
              style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
            ),
            content: MultiBlocProvider(
              providers: [
                BlocProvider(create: (context) => sl<CreateTeacherCubit>()),
                BlocProvider(create: (context) => sl<UpdateTeacherCubit>()),
              ],
              child: BlocConsumer<CreateTeacherCubit, CreateTeacherState>(
                listener: (context, state) {},
                builder: (context, state) {
                  final createTeacherCubit = context.read<CreateTeacherCubit>();
                  return Center(
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
                                Text(
                                  'Teacher Information',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.headlineSmall,
                                ),
                                const SizedBox(height: 24),
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
                                const SizedBox(height: 32),
                                Text(
                                  'Subjects Taught',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.headlineSmall,
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        controller: _subjectController,
                                        decoration: const InputDecoration(
                                          labelText: 'Add a subject',
                                          border: OutlineInputBorder(),
                                        ),
                                        onFieldSubmitted: (value) {},
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: IconButton.filled(
                                        icon: const Icon(Icons.add),
                                        onPressed: () {},
                                        tooltip: 'Add Subject',
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),

                                // BlocBuilder rebuilds the widget inside it whenever the state changes.
                                BlocBuilder<
                                  CreateTeacherCubit,
                                  CreateTeacherState
                                >(
                                  builder: (context, state) {
                                    if (createTeacherCubit
                                        .selectedBooks
                                        .isEmpty) {
                                      return const Text(
                                        'No subjects added yet.',
                                      );
                                    }
                                    return Wrap(
                                      spacing: 8.0,
                                      runSpacing: 8.0,
                                      children: createTeacherCubit.selectedBooks
                                          .map((subject) {
                                            return Chip(
                                              label: Text(subject.name),
                                              onDeleted: () => context
                                                  .read<CreateTeacherCubit>()
                                                  .removeBook(subject),
                                              deleteIcon: const Icon(
                                                Icons.close,
                                                size: 18,
                                              ),
                                            );
                                          })
                                          .toList(),
                                    );
                                  },
                                ),

                                const SizedBox(height: 40),

                                SizedBox(
                                  width: double.infinity,
                                  child:
                                      BlocBuilder<
                                        CreateTeacherCubit,
                                        CreateTeacherState
                                      >(
                                        builder: (context, state) {
                                          return ElevatedButton(
                                            onPressed: () {
                                              if (_formKey.currentState!
                                                  .validate()) {
                                                context
                                                    .read<CreateTeacherCubit>()
                                                    .createTeacher(
                                                      body: CreateTeacherRequestBodyModel(
                                                        name: _nameController
                                                            .text,
                                                        email: _emailController
                                                            .text,
                                                        subjects:
                                                            createTeacherCubit
                                                                .selectedBooks
                                                                .map(
                                                                  (e) => e.id,
                                                                )
                                                                .toList(),
                                                      ),
                                                    );
                                              }
                                            },
                                            style: ElevatedButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    vertical: 16,
                                                  ),
                                              textStyle: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              backgroundColor:
                                                  Colors.blueGrey[800],
                                              foregroundColor: Colors.white,
                                            ),
                                            child: const Text('Create Teacher'),
                                          );
                                        },
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(translator.cancel),
              ),
              FilledButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.of(context).pop();
                  }
                },
                child: Text(translator.save),
              ),
            ],
          ),
        ),
      );
    },
  );
}
