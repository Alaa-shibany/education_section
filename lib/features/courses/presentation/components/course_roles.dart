import 'package:courses/features/courses/presentation/helper/text_feilds.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CourseRoles extends StatelessWidget {
  const CourseRoles({
    super.key,
    required this.paymentDeadlineController,
    required this.successPercentageController,
  });
  final TextEditingController paymentDeadlineController;
  final TextEditingController successPercentageController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildSectionHeader(context, 'Rules & Schedule'),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: paymentDeadlineController,
                decoration: buildInputDecoration(
                  label: 'Payment Deadline (Days)',
                  icon: Icons.timer_outlined,
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: (v) => (v == null || v.isEmpty) ? 'Required' : null,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: TextFormField(
                controller: successPercentageController,
                decoration: buildInputDecoration(
                  label: 'Success %',
                  icon: Icons.percent_outlined,
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: (v) => (v == null || v.isEmpty) ? 'Required' : null,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
