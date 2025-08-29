import 'package:courses/config/constants/application_images.dart';
import 'package:courses/features/students/models/student_model.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentListItem extends StatefulWidget {
  final StudentModel item;

  const StudentListItem({super.key, required this.item});

  @override
  State<StudentListItem> createState() => _StudentListItemState();
}

class _StudentListItemState extends State<StudentListItem> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final translator = AppLocalizations.of(context)!;

    return MouseRegion(
      onEnter: (event) => setState(() {
        isHover = true;
      }),
      onExit: (event) => setState(() {
        isHover = false;
      }),
      child: AnimatedScale(
        duration: 200.ms,
        scale: isHover ? 1.01 : 1,
        child: InkWell(
          onTap: () {},
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
                      color: widget.item.gender == 'female'
                          ? Colors.pink.withValues(alpha: 0.1)
                          : Theme.of(
                              context,
                            ).colorScheme.primary.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset(
                      ApplicationImages.studentSVG,
                      height: 30,
                      width: 30,
                      colorFilter: ColorFilter.mode(
                        widget.item.gender == 'female'
                            ? Colors.pink
                            : Theme.of(context).colorScheme.primary,
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
                          widget.item.name,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),

                        Text(
                          '${translator.gender}: ${widget.item.gender}',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${translator.father_name}: ${widget.item.partnerName}',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '${translator.age}: ${widget.item.age}',
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
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
