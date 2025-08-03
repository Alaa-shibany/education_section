import 'package:courses/features/teacher_profile/presentation/components/financial_card.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class FinancialSection extends StatelessWidget {
  final double paidDues;
  final double pendingDues;
  final VoidCallback onTransfer;
  final VoidCallback onHistory;

  const FinancialSection({
    super.key,
    required this.paidDues,
    required this.pendingDues,
    required this.onTransfer,
    required this.onHistory,
  });

  @override
  Widget build(BuildContext context) {
    final translator = AppLocalizations.of(context)!;
    return Row(
      children: [
        Expanded(
          child: FinancialCard(
            title: translator.dues_pending_transfer,
            amount: pendingDues,
            icon: Icons.hourglass_top_rounded,
            color: Colors.orangeAccent,
            child: pendingDues > 0
                ? ElevatedButton.icon(
                    onPressed: onTransfer,
                    icon: const Icon(Icons.send_rounded, color: Colors.white),
                    label: Text(
                      translator.transfer_of_dues,
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
                : Text(
                    translator.no_dues_for_now,
                    style: TextStyle(color: Colors.grey),
                  ),
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: FinancialCard(
            title: translator.paid_dues,
            amount: paidDues,
            icon: Icons.check_circle_outline_rounded,
            color: Colors.green,
            child: paidDues == 0
                ? Text(
                    translator.no_dues_for_now,

                    style: TextStyle(color: Colors.grey),
                  )
                : TextButton(
                    onPressed: onHistory,
                    child: Text(translator.show_history),
                  ),
          ),
        ),
      ],
    );
  }
}
