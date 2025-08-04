import 'package:courses/features/courses/models/course_model.dart';
import 'package:courses/helper/text_feilds.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:courses/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TeacherCourseInfo extends StatefulWidget {
  const TeacherCourseInfo({super.key, required this.course});
  final CourseModel course;

  @override
  State<TeacherCourseInfo> createState() => _TeacherCourseInfoState();
}

class _TeacherCourseInfoState extends State<TeacherCourseInfo> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final translator = AppLocalizations.of(context)!;
    return Expanded(
      child: Column(
        children: [
          buildSectionHeader(context, translator.teacher),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            transform: _isHovered
                ? (Matrix4.identity()..translate(0, -4, 0))
                : Matrix4.identity(),
            child: InkWell(
              onTap: () => context.push(
                AppRoutes.teacherProfile,
                extra: widget.course.teacher,
              ),
              child: Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      buildInfoRow(
                        context,
                        icon: Icons.person_outline,
                        title: translator.name,
                        value: widget.course.teacher.name,
                      ),
                      buildInfoRow(
                        context,
                        icon: Icons.phone_outlined,
                        title: translator.phone,
                        value: widget.course.teacher.phone,
                      ),
                      buildInfoRow(
                        context,
                        icon: Icons.email_outlined,
                        title: translator.email,
                        value: widget.course.teacher.email,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
