import 'package:courses/features/subjects/models/subject_model.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void showManageSubjectDialog(BuildContext context, {SubjectModel? subject}) {
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
              FilledButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
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
