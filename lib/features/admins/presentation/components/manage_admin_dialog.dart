import 'package:courses/core/services/service_locator.dart';
import 'package:courses/features/admins/cubits/create_admin_cubit/create_admin_cubit.dart';
import 'package:courses/features/admins/cubits/helper_cubit/helper_cubit.dart';
import 'package:courses/features/admins/models/admin_model.dart';

import 'package:courses/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void showManageAdminDialog(BuildContext context, {AdminModel? admin}) {
  final isEditing = admin != null;
  final _nameController = TextEditingController(
    text: isEditing ? admin.name : '',
  );
  final _passwordController = TextEditingController();
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
      return ScaleTransition(
        scale: Tween<double>(begin: 0.9, end: 1.0).animate(anim1),
        child: FadeTransition(
          opacity: anim1,
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            title: Text(
              isEditing ? translator.edit_admin : translator.add_new_admin,
              style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
            ),
            content: MultiBlocProvider(
              providers: [
                BlocProvider(create: (context) => sl<HelperCubit>()..helper()),
                BlocProvider(create: (context) => sl<CreateAdminCubit>()),
              ],
              child: BlocConsumer<CreateAdminCubit, CreateAdminState>(
                listener: (context, state) {},
                builder: (context, state) {
                  final createAdminCubit = context.read<CreateAdminCubit>();
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
                                  controller: _passwordController,
                                  decoration: const InputDecoration(
                                    labelText: 'Password',
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.email_outlined),
                                  ),
                                  validator: (v) => (v == null)
                                      ? 'Please enter a valid email'
                                      : null,
                                ),
                                const SizedBox(height: 32),
                                Text(
                                  translator.permission,
                                  style: Theme.of(
                                    context,
                                  ).textTheme.headlineSmall,
                                ),
                                const SizedBox(height: 16),
                                BlocBuilder<HelperCubit, HelperState>(
                                  builder: (context, state) {
                                    return SearchAnchor.bar(
                                      barHintText: 'Select role',
                                      searchController: _subjectController,
                                      suggestionsBuilder:
                                          (context, controller) {
                                            final String input =
                                                controller.value.text;
                                            return state.data!
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
                                                      createAdminCubit
                                                          .selectPermission(e);
                                                      _subjectController
                                                          .closeView('');
                                                    },
                                                  ),
                                                );
                                          },
                                    );
                                  },
                                ),

                                const SizedBox(height: 16),
                                BlocBuilder<CreateAdminCubit, CreateAdminState>(
                                  builder: (context, state) {
                                    if (state.selectedPermission == null) {
                                      return Text(translator.no_permission_yet);
                                    }
                                    return Wrap(
                                      spacing: 8.0,
                                      runSpacing: 8.0,
                                      children: [
                                        Chip(
                                          label: Text(
                                            state.selectedPermission!.name,
                                          ),
                                          onDeleted: () => createAdminCubit
                                              .deletePermission(),
                                          deleteIcon: const Icon(
                                            Icons.close,
                                            size: 18,
                                          ),
                                        ),
                                      ],
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
