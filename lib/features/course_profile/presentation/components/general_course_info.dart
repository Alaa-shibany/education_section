import 'package:courses/features/courses/models/course_model.dart';
import 'package:courses/features/courses/presentation/components/status_line.dart';
import 'package:courses/helper/text_feilds.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:courses/shared/statistics/circular_progress_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GeneralCourseInfo extends StatelessWidget {
  const GeneralCourseInfo({super.key, required this.course});
  final CourseModel course;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final translator = AppLocalizations.of(context)!;

    Color _getStatusColor(String status) {
      switch (status.toLowerCase()) {
        case 'announced':
          return Colors.orange;
        case 'started':
          return Colors.blueAccent;
        case 'finished':
          return Colors.green;
        default:
          return Colors.grey;
      }
    }

    return Column(
      children: [
        buildSectionHeader(context, translator.general_info),
        Wrap(
          alignment: WrapAlignment.start,
          children: [
            SizedBox(
              width: mediaQuery.width / 2,
              child: Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Chip(
                            label: Text(
                              course.status,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            backgroundColor: _getStatusColor(course.status),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      buildInfoRow(
                        context,
                        icon: Icons.book_outlined,
                        title: translator.subjects,
                        value: course.subject.name,
                      ),
                      buildInfoRow(
                        context,
                        icon: Icons.calendar_today,
                        title: translator.started,
                        value: course.startDate != null
                            ? DateFormat.yMMMd(
                                'ar',
                              ).format(DateTime.parse(course.startDate!))
                            : translator.not_specified,
                      ),
                      buildInfoRow(
                        context,
                        icon: Icons.calendar_month,
                        title: translator.finished,
                        value: course.finishDate != null
                            ? DateFormat.yMMMd(
                                'ar',
                              ).format(DateTime.parse(course.finishDate!))
                            : translator.not_specified,
                      ),
                      buildInfoRow(
                        context,
                        icon: Icons.price_change,
                        title: translator.register_price,
                        value: '${course.price} \$',
                      ),
                      Divider(color: Colors.grey.withValues(alpha: 0.3)),
                      buildStatusTimeline(context, course.status),
                    ],
                  ),
                ),
              ),
            ),
            CircularProgressCard(
              title: translator.success_rate,
              currentValue: course.successPercentage.toDouble(),
              goalValue: 100,
              color: Theme.of(context).primaryColor,
              unitLabel: translator.success_rate,
            ),
          ],
        ),
      ],
    );
  }
}
