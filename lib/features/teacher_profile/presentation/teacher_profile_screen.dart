import 'package:courses/core/services/status.dart';
import 'package:courses/features/teacher_profile/cubits/get_payments_cubit/get_payments_cubit.dart';
import 'package:courses/features/teacher_profile/presentation/components/financial_section.dart';
import 'package:courses/features/teacher_profile/presentation/components/subjects_section.dart';
import 'package:courses/features/teacher_profile/presentation/components/teacher_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class TeacherProfileScreen extends StatelessWidget {
  const TeacherProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final paymentsCubit = context.read<GetPaymentsCubit>();
    return BlocConsumer<GetPaymentsCubit, GetPaymentsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SingleChildScrollView(
          padding: const EdgeInsets.only(top: 50.0),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TeacherInfoCard(teacher: state.teacher!),
                  const SizedBox(height: 30),
                  const Text(
                    'المواد الدراسية',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(height: 4),
                  SubjectsSection(subjects: []),
                  const SizedBox(height: 30),
                  const Text(
                    'الخزانة المالية',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(height: 4),
                  Skeletonizer(
                    enabled: state.status == SubmissionStatus.loading,
                    child: FinancialSection(
                      paidDues: state.status == SubmissionStatus.loading
                          ? 5200.00
                          : paymentsCubit.getPaidDues(),
                      pendingDues: state.status == SubmissionStatus.loading
                          ? 5200.00
                          : paymentsCubit.getPendingDues(),
                      onTransfer: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
