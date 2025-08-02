import 'package:courses/features/teacher_profile/presentation/components/financial_section.dart';
import 'package:courses/features/teacher_profile/presentation/components/subjects_section.dart';
import 'package:courses/features/teacher_profile/presentation/components/teacher_info_card.dart';
import 'package:courses/features/teachers/models/teacher_model.dart';
import 'package:flutter/material.dart';

class TeacherProfileScreen extends StatelessWidget {
  const TeacherProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TeacherModel teacher = TeacherModel(
      id: 1,
      name: 'Alaa shibany',
      email: 'alaa@gmail.com',
      phone: '',
    );
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 50.0),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TeacherInfoCard(teacher: teacher),
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
              FinancialSection(
                paidDues: 5200.00,
                pendingDues: 750.00,
                onTransfer: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
