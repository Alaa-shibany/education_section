import 'package:courses/config/constants/application_images.dart';
import 'package:courses/features/subjects/models/subject_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SubjectsSection extends StatelessWidget {
  const SubjectsSection({super.key, required this.subjects});
  final List<SubjectModel> subjects;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(subjects.length, (index) {
        final subject = subjects[index];
        return Card(
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: 120,
              vertical: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).colorScheme.primary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(
                    ApplicationImages.booksSVG,
                    height: 30,
                    width: 30,
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),

                const SizedBox(height: 4),
                Text(
                  subject.name,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
