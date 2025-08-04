import 'package:courses/features/course_profile/cubits/get_sessions_cubit/get_sessions_cubit.dart';
import 'package:courses/features/course_profile/presentation/components/course_sessions.dart';
import 'package:courses/features/course_profile/presentation/components/financial_course_info.dart';
import 'package:courses/features/course_profile/presentation/components/general_course_info.dart';
import 'package:courses/features/course_profile/presentation/components/teacher_course_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseProfileScreen extends StatelessWidget {
  const CourseProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GetSessionsCubit, GetSessionsState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                expandedHeight: 200.0,
                backgroundColor: Theme.of(context).colorScheme.primary,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    state.course!.name,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  background: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Theme.of(
                            context,
                          ).colorScheme.primary.withOpacity(0.8),
                          Theme.of(
                            context,
                          ).colorScheme.secondary.withOpacity(0.6),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.school,
                        size: 80,
                        color: Colors.white.withOpacity(0.3),
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GeneralCourseInfo(course: state.course!),
                      Row(
                        spacing: 20,
                        children: [
                          TeacherCourseInfo(course: state.course!),
                          FinancialCourseInfo(course: state.course!),
                        ],
                      ),
                      CourseSessions(),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
