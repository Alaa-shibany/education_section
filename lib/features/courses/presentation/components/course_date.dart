import 'package:courses/features/courses/cubits/create_course_cubit/create_course_cubit.dart';
import 'package:courses/helper/text_feilds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CourseDate extends StatelessWidget {
  const CourseDate({
    super.key,
    required this.finishDate,
    required this.startDate,
    required this.startTimeController,
    required this.endTimeController,
  });
  final ValueNotifier<DateTime?> finishDate;
  final ValueNotifier<DateTime?> startDate;
  final TextEditingController startTimeController;
  final TextEditingController endTimeController;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        buildSectionHeader(context, 'Sessions'),

        Row(
          children: [
            Expanded(
              child: _buildDatePickerField(context, 'Start Date', startDate),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: _buildDatePickerField(context, 'Finish Date', finishDate),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: _buildTimePicker(
                context,
                startTimeController,
                'Start Time',
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: _buildTimePicker(context, endTimeController, 'End Time'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDatePickerField(
    BuildContext context,
    String label,
    ValueNotifier<DateTime?> dateNotifier,
  ) {
    return BlocBuilder<CreateCourseCubit, CreateCourseState>(
      builder: (context, state) {
        return ValueListenableBuilder<DateTime?>(
          valueListenable: dateNotifier,
          builder: (context, dateValue, child) {
            final controller = TextEditingController(
              text: dateValue == null
                  ? ''
                  : DateFormat('yyyy-MM-dd').format(dateValue),
            );
            return TextFormField(
              controller: controller,
              readOnly: true,
              decoration: buildInputDecoration(
                label: label,
                icon: Icons.calendar_today_outlined,
              ),
              onTap: () async {
                final DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: dateValue ?? DateTime.now(),
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2040),
                );
                if (pickedDate != null) {
                  dateNotifier.value = pickedDate;
                }
              },
              validator: (v) => ((v == null || v.isEmpty) && state.isDaily)
                  ? 'Please select a date'
                  : null,
            );
          },
        );
      },
    );
  }

  Widget _buildTimePicker(
    BuildContext context,
    TextEditingController controller,
    String label,
  ) {
    return TextFormField(
      controller: controller,
      readOnly: true,
      decoration: buildInputDecoration(
        label: label,
        icon: Icons.calendar_today_outlined,
      ),
      onTap: () async {
        final selectedTime = await showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
        );
        if (selectedTime != null) {
          final hour = selectedTime.hour.toString().padLeft(2, '0');
          final minute = selectedTime.minute.toString().padLeft(2, '0');
          controller.text = '$hour:$minute';
        }
      },
      validator: (v) => v!.isEmpty ? 'Please select an end time' : null,
    );
  }
}
