import 'package:courses/features/teacher_profile/presentation/components/financial_card.dart';
import 'package:flutter/material.dart';

class FinancialSection extends StatelessWidget {
  final double paidDues;
  final double pendingDues;
  final VoidCallback onTransfer;

  const FinancialSection({
    super.key,
    required this.paidDues,
    required this.pendingDues,
    required this.onTransfer,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: FinancialCard(
            title: 'مستحقات قيد التحويل',
            amount: pendingDues,
            icon: Icons.hourglass_top_rounded,
            color: Colors.orangeAccent,
            child: pendingDues > 0
                ? ElevatedButton.icon(
                    onPressed: onTransfer,
                    icon: const Icon(Icons.send_rounded, color: Colors.white),
                    label: const Text(
                      'تحويل المستحقات',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                : const Text(
                    'لا توجد مستحقات حالياً',
                    style: TextStyle(color: Colors.grey),
                  ),
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: FinancialCard(
            title: 'الرصيد المدفوع',
            amount: paidDues,
            icon: Icons.check_circle_outline_rounded,
            color: Colors.green,
            child: TextButton(onPressed: () {}, child: const Text('عرض السجل')),
          ),
        ),
      ],
    );
  }
}
