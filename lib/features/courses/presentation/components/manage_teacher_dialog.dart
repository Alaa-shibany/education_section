import 'package:courses/core/services/service_locator.dart';
import 'package:courses/core/services/status.dart';
import 'package:courses/features/courses/cubits/create_course_cubit/create_course_cubit.dart';
import 'package:courses/features/courses/cubits/get_courses_cubit/get_courses_cubit.dart';
import 'package:courses/features/courses/models/course_model.dart';
import 'package:courses/features/courses/models/create_course_request_body_model.dart';
import 'package:courses/features/courses/presentation/components/course_date.dart';
import 'package:courses/features/courses/presentation/components/course_details.dart';
import 'package:courses/features/courses/presentation/components/course_financial.dart';
import 'package:courses/features/courses/presentation/components/course_roles.dart';
import 'package:courses/features/courses/presentation/components/course_sessions.dart';
import 'package:courses/features/subjects/cubits/get_subjects_cubit/get_subjects_cubit.dart';
import 'package:courses/features/subjects/models/subject_model.dart';
import 'package:courses/features/teachers/cubits/get_teachers_cubit/get_teachers_cubit.dart';
import 'package:courses/features/teachers/models/teacher_model.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:courses/shared/dialogs/loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void showManageCourseDialog(
  BuildContext context,
  GetCoursesCubit coursesCubit, {
  CourseModel? course, // Changed from TeacherModel to CourseModel
}) {
  final isEditing = course != null;
  final translator = AppLocalizations.of(context)!;
  final _formKey = GlobalKey<FormState>();

  // == Controllers ==
  final _nameController = TextEditingController(
    text: isEditing ? course.name : '',
  );
  final _priceController = TextEditingController(
    text: isEditing ? course.price.toString() : '',
  );
  final _subjectSearchController = SearchController();
  final _teacherSearchController = SearchController();
  final _firstPaymentController = TextEditingController(
    text: isEditing ? course.firstPaymentAmount.toString() : '',
  );
  final _startTimeController = TextEditingController();
  final _endTimeController = TextEditingController();
  final _teacherSalaryController = TextEditingController(
    text: isEditing ? course.teacherSalary.toString() : '',
  );
  final _paymentDeadlineController = TextEditingController(
    text: isEditing ? course.paymentDeadlineDays.toString() : '',
  );
  final _successPercentageController = TextEditingController(
    text: isEditing ? course.successPercentage.toString() : '',
  );
  final ValueNotifier<DateTime?> _startDate = ValueNotifier(
    isEditing && course.startDate != null
        ? DateTime.parse(course.startDate!)
        : null,
  );
  final ValueNotifier<DateTime?> _finishDate = ValueNotifier(
    isEditing && course.finishDate != null
        ? DateTime.parse(course.finishDate!)
        : null,
  );
  final ValueNotifier<SubjectModel?> _selectedSubject = ValueNotifier(
    isEditing ? course.subject : null,
  );
  final ValueNotifier<TeacherModel?> _selectedTeacher = ValueNotifier(
    isEditing ? course.teacher : null,
  );
  final ValueNotifier<List<Map<String, String>>> _sessions = ValueNotifier([]);

  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: translator.manage_subject,
    transitionDuration: const Duration(milliseconds: 400),
    pageBuilder: (context, anim1, anim2) => const SizedBox(),
    transitionBuilder: (context, anim1, anim2, child) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => sl<CreateCourseCubit>()),
          BlocProvider(
            create: (context) => sl<GetSubjectsCubit>()..getSubjects(),
          ),
          BlocProvider(
            create: (context) => sl<GetTeachersCubit>()..fetchPage(1),
          ),
        ],
        child: ScaleTransition(
          scale: Tween<double>(
            begin: 0.9,
            end: 1.0,
          ).animate(CurvedAnimation(parent: anim1, curve: Curves.easeOutCubic)),
          child: FadeTransition(
            opacity: anim1,
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: Text(
                isEditing ? "Edit course" : "Create course",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
              ),
              content: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 800,
                    maxHeight: 650,
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 12.0,
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Details Section
                            CourseDetails(
                              nameController: _nameController,
                              subjectSearchController: _subjectSearchController,
                              teacherSearchController: _teacherSearchController,
                              selectedTeacher: _selectedTeacher,
                              selectedSubject: _selectedSubject,
                            ),

                            //Financial Section
                            CourseFinancial(
                              priceController: _priceController,
                              firstPaymentController: _firstPaymentController,
                              teacherSalaryController: _teacherSalaryController,
                            ),

                            //Roles Section
                            CourseRoles(
                              paymentDeadlineController:
                                  _paymentDeadlineController,
                              successPercentageController:
                                  _successPercentageController,
                            ),
                            const SizedBox(height: 16),
                            //Sessions Section
                            BlocBuilder<CreateCourseCubit, CreateCourseState>(
                              builder: (context, state) {
                                return state.isDaily
                                    ? CourseDate(
                                        endTimeController: _endTimeController,
                                        startTimeController:
                                            _startTimeController,
                                        finishDate: _finishDate,
                                        startDate: _startDate,
                                      )
                                    : buildSessionsManager(
                                        context,
                                        _sessions,
                                        _finishDate,
                                        _startDate,
                                      );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(translator.cancel),
                ),
                BlocConsumer<CreateCourseCubit, CreateCourseState>(
                  listener: (context, state) {
                    if (state.status == SubmissionStatus.loading) {
                      showLoadingDialog(context);
                    } else if (state.status == SubmissionStatus.error) {
                      Navigator.pop(context);
                      state.failure!.handle(context, onRetry: () {});
                    } else if (state.status == SubmissionStatus.success) {
                      Navigator.pop(context);
                      Navigator.pop(context);
                      coursesCubit.pagingController.refresh();
                    }
                  },
                  builder: (context, state) {
                    return FilledButton.icon(
                      label: Text(translator.save),
                      onPressed: () {
                        if (_formKey.currentState!.validate() &&
                            _selectedSubject.value != null &&
                            _selectedTeacher.value != null) {
                          final body = CreateCourseRequestBodyModel(
                            name: _nameController.text,
                            subject_id: _selectedSubject.value!.id,
                            teacher_id: _selectedTeacher.value!.id,
                            start_date: _startDate.value!.toIso8601String(),
                            finish_date: _finishDate.value!.toIso8601String(),
                            price: int.parse(_priceController.text),
                            first_payment_amount: int.parse(
                              _firstPaymentController.text,
                            ),
                            teacher_salary: int.parse(
                              _teacherSalaryController.text,
                            ),
                            payment_deadline_days: int.parse(
                              _paymentDeadlineController.text,
                            ),
                            success_percentage: int.parse(
                              _successPercentageController.text,
                            ),
                            sessions: state.isDaily
                                ? context
                                      .read<CreateCourseCubit>()
                                      .generateDailySessions(
                                        startDateString: _startDate.value!
                                            .toIso8601String(),
                                        endDateString: _finishDate.value!
                                            .toIso8601String(),
                                        startTime: _startTimeController.text,
                                        endTime: _endTimeController.text,
                                      )
                                : _sessions.value,
                          );
                          context.read<CreateCourseCubit>().createCourse(
                            body: body,
                          );
                        } else {
                          // Optional: Show a snackbar for missing selections
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Please fill all required fields and selections.',
                              ),
                            ),
                          );
                        }
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
