import 'package:courses/features/courses/cubits/create_course_cubit/create_course_cubit.dart';
import 'package:courses/features/courses/presentation/helper/text_feilds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

Widget buildSessionsManager(
  BuildContext context,
  ValueNotifier<List<Map<String, String>>> sessionsNotifier,
  ValueNotifier<DateTime?> finishDate,
  ValueNotifier<DateTime?> startDate,
) {
  return ValueListenableBuilder<List<Map<String, String>>>(
    valueListenable: sessionsNotifier,
    builder: (context, sessionList, child) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSectionHeader(context, 'Sessions'),
          Row(
            children: [
              Expanded(
                child: _buildDatePickerField(context, 'Start Date', startDate),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _buildDatePickerField(
                  context,
                  'Finish Date',
                  finishDate,
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Sessions', style: Theme.of(context).textTheme.titleMedium),
              IconButton.filledTonal(
                icon: const Icon(Icons.add),
                onPressed: () {
                  // **MODIFIED ACTION**: Show dialog to add session details
                  _showAddSessionDialog(context, sessionsNotifier);
                },
              ),
            ],
          ),
          const SizedBox(height: 8),
          if (sessionList.isEmpty)
            const Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'No sessions added yet.',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          if (sessionList.isNotEmpty)
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 200,
              ), // Increased height slightly
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: sessionList.length,
                itemBuilder: (context, index) {
                  final session = sessionList[index];
                  return Card(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      leading: const Icon(
                        Icons.schedule,
                        color: Colors.blueGrey,
                      ),
                      // **UPDATED DISPLAY**
                      title: Text('Session on ${session['session_date']}'),
                      subtitle: Text(
                        'From ${session['start_time']} to ${session['end_time']}',
                      ),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.delete_outline,
                          color: Colors.redAccent,
                        ),
                        onPressed: () {
                          sessionsNotifier.value = List.from(
                            sessionsNotifier.value,
                          )..removeAt(index);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
        ],
      );
    },
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

Future<void> _showAddSessionDialog(
  BuildContext context,
  ValueNotifier<List<Map<String, String>>> sessionsNotifier,
) async {
  final _formKey = GlobalKey<FormState>();
  final _dateController = TextEditingController();
  final _startTimeController = TextEditingController();
  final _endTimeController = TextEditingController();

  DateTime? selectedDate;
  TimeOfDay? selectedStartTime;
  TimeOfDay? selectedEndTime;

  return showDialog<void>(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: const Text('Add New Session'),
        content: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // Date Picker Field
              TextFormField(
                controller: _dateController,
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: 'Session Date',
                  prefixIcon: Icon(Icons.calendar_today_outlined),
                ),
                onTap: () async {
                  selectedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2040),
                  );
                  if (selectedDate != null) {
                    _dateController.text = '${selectedDate!.toLocal()}'.split(
                      ' ',
                    )[0];
                  }
                },
                validator: (v) => v!.isEmpty ? 'Please select a date' : null,
              ),
              const SizedBox(height: 16),
              // Start Time Picker Field
              TextFormField(
                controller: _startTimeController,
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: 'Start Time',
                  prefixIcon: Icon(Icons.access_time_outlined),
                ),
                onTap: () async {
                  selectedStartTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (selectedStartTime != null) {
                    final hour = selectedStartTime!.hour.toString().padLeft(
                      2,
                      '0',
                    );
                    final minute = selectedStartTime!.minute.toString().padLeft(
                      2,
                      '0',
                    );
                    _startTimeController.text = '$hour:$minute';
                  }
                },
                validator: (v) =>
                    v!.isEmpty ? 'Please select a start time' : null,
              ),
              const SizedBox(height: 16),
              // End Time Picker Field
              TextFormField(
                controller: _endTimeController,
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: 'End Time',
                  prefixIcon: Icon(Icons.timelapse_outlined),
                ),
                onTap: () async {
                  selectedEndTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (selectedEndTime != null) {
                    final hour = selectedStartTime!.hour.toString().padLeft(
                      2,
                      '0',
                    );
                    final minute = selectedStartTime!.minute.toString().padLeft(
                      2,
                      '0',
                    );
                    _endTimeController.text = '$hour:$minute';
                  }
                },
                validator: (v) =>
                    v!.isEmpty ? 'Please select an end time' : null,
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Cancel'),
            onPressed: () => Navigator.of(dialogContext).pop(),
          ),
          FilledButton(
            child: const Text('Save Session'),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                final newSession = {
                  'session_date': _dateController.text,
                  'start_time': _startTimeController.text,
                  'end_time': _endTimeController.text,
                };
                sessionsNotifier.value = List.from(sessionsNotifier.value)
                  ..add(newSession);
                Navigator.of(dialogContext).pop();
              }
            },
          ),
        ],
      );
    },
  );
}
