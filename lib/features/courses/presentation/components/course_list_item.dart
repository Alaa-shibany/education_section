import 'package:courses/config/constants/application_images.dart';
import 'package:courses/features/courses/cubits/get_courses_cubit/get_courses_cubit.dart';
import 'package:courses/features/courses/cubits/update_course_status_cubit/update_course_status_cubit.dart';
import 'package:courses/features/courses/models/course_model.dart';
import 'package:courses/features/courses/models/update_course_status_request_body_model.dart';
import 'package:courses/features/courses/presentation/components/status_line.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:courses/layouts/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseListItem extends StatefulWidget {
  final CourseModel courseItem;

  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const CourseListItem({
    super.key,
    required this.courseItem,

    required this.onEdit,
    required this.onDelete,
  });

  @override
  State<CourseListItem> createState() => _TeacherListItemState();
}

class _TeacherListItemState extends State<CourseListItem> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    final translator = AppLocalizations.of(context)!;
    final coursesCubit = context.read<GetCoursesCubit>();
    final updateCourseStatusCubit = context.read<UpdateCourseStatusCubit>();

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: _isHovered
            ? (Matrix4.identity()..translate(0, -4, 0))
            : Matrix4.identity(),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                          ApplicationImages.courseSVG,
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
                              widget.courseItem.name,
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${translator.teacher}: ${widget.courseItem.teacher.name}',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Row(
                        spacing: 10,
                        children: [
                          Text(
                            widget.courseItem.subject.name,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          PopupMenuButton<String>(
                            onSelected: (value) {
                              if (value == 'edit') {
                                widget.onEdit();
                              } else {
                                updateCourseStatusCubit.updateCourseStatus(
                                  body: UpdateCourseStatusRequestBodyModel(
                                    status: value,
                                  ),
                                  id: widget.courseItem.id,
                                );
                              }
                            },
                            itemBuilder: (BuildContext context) =>
                                <PopupMenuEntry<String>>[
                                  PopupMenuItem<String>(
                                    value: 'edit',
                                    child: ListTile(
                                      leading: Icon(Icons.edit_outlined),
                                      title: Text(translator.edit),
                                    ),
                                  ),
                                  if (widget.courseItem.status != 'finished')
                                    PopupMenuItem<String>(
                                      value: coursesCubit
                                          .getNextStatus(
                                            widget.courseItem.status,
                                            translator,
                                          )
                                          .value,
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.slow_motion_video_outlined,
                                        ),
                                        title: Text(
                                          coursesCubit
                                              .getNextStatus(
                                                widget.courseItem.status,
                                                translator,
                                              )
                                              .label,
                                        ),
                                      ),
                                    ),
                                ],
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Divider(color: Colors.grey.withValues(alpha: 0.3)),
                  const SizedBox(height: 8),
                  ResponsiveLayout(
                    mobileBody: buildStatusTimeline(
                      context,
                      widget.courseItem.status,
                    ),
                    tabletBody: SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: buildStatusTimeline(
                        context,
                        widget.courseItem.status,
                      ),
                    ),
                    desktopBody: SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: buildStatusTimeline(
                        context,
                        widget.courseItem.status,
                      ),
                    ),
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
