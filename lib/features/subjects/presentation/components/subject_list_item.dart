import 'package:courses/config/constants/application_images.dart';
import 'package:courses/features/subjects/models/subject_model.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SubjectListItem extends StatelessWidget {
  final SubjectModel subjectItem;

  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const SubjectListItem({
    super.key,
    required this.subjectItem,

    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final translator = AppLocalizations.of(context)!;

    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(
                  context,
                ).colorScheme.primary.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(
                ApplicationImages.booksSVG,
                height: 30,
                width: 30,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.primary,
                  BlendMode.srcIn,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subjectItem.name,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${translator.last_update}: 2-8-2025',
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            PopupMenuButton<String>(
              onSelected: (value) {
                if (value == 'edit') {
                  onEdit();
                } else if (value == 'delete') {
                  onDelete();
                }
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'edit',
                  child: ListTile(
                    leading: Icon(Icons.edit_outlined),
                    title: Text(translator.edit),
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'delete',
                  child: ListTile(
                    leading: Icon(Icons.delete_outline, color: Colors.red),
                    title: Text(
                      translator.delete,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ],
              icon: Icon(Icons.more_vert, color: Colors.grey.shade700),
            ),
          ],
        ),
      ),
    );
  }
}
