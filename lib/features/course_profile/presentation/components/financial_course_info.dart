import 'package:courses/features/courses/models/course_model.dart';
import 'package:courses/helper/text_feilds.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class FinancialCourseInfo extends StatelessWidget {
  const FinancialCourseInfo({super.key, required this.course});
  final CourseModel course;
  @override
  Widget build(BuildContext context) {
    final translator = AppLocalizations.of(context)!;
    return Expanded(
      child: Column(
        children: [
          buildSectionHeader(context, translator.financial_treasury),
          Card(
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
                    icon: Icons.payments_outlined,
                    title: translator.down_payment,
                    value: '${course.firstPaymentAmount} \$',
                  ),
                  buildInfoRow(
                    context,
                    icon: Icons.wallet_outlined,
                    title: translator.teacher_salary,
                    value: '${course.teacherSalary} \$',
                  ),
                  buildInfoRow(
                    context,
                    icon: Icons.timer_outlined,
                    title: translator.payment_deadline,
                    value: '${course.paymentDeadlineDays} ${translator.day}',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
