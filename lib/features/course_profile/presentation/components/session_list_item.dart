import 'package:courses/config/constants/application_images.dart';
import 'package:courses/features/course_profile/models/session_model.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class SessionListItem extends StatefulWidget {
  final SessionModel sessionItem;
  final int index;
  final VoidCallback onSync;

  const SessionListItem({
    super.key,
    required this.index,
    required this.sessionItem,

    required this.onSync,
  });

  @override
  State<SessionListItem> createState() => _TeacherListItemState();
}

class _TeacherListItemState extends State<SessionListItem> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    final translator = AppLocalizations.of(context)!;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: _isHovered
            ? (Matrix4.identity()..translate(0, -4, 0))
            : Matrix4.identity(),
        child: InkWell(
          // onTap: () =>
          //     context.push(AppRoutes.teacherProfile, extra: widget.),
          child: Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(vertical: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
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
                      ApplicationImages.sessionSVG,
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
                          "${translator.session} ${widget.index}",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${translator.session_date}: ${DateFormat('d-m-y').format(DateTime.parse(widget.sessionItem.sessionDate))}',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        const SizedBox(height: 4),

                        Text(
                          '${translator.started}: ${widget.sessionItem.startTime}  ${translator.finished}: ${widget.sessionItem.endTime}',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  PopupMenuButton<String>(
                    onSelected: (value) {
                      if (value == 'sync') {
                        widget.onSync();
                      }
                    },
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                          PopupMenuItem<String>(
                            value: 'sync',
                            child: ListTile(
                              leading: Icon(Icons.edit_outlined),
                              title: Text(translator.sync_attendance),
                            ),
                          ),
                        ],
                    icon: Icon(Icons.more_vert, color: Colors.grey.shade700),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
