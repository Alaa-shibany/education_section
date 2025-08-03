import 'package:courses/config/constants/application_images.dart';
import 'package:courses/core/services/status.dart';
import 'package:courses/features/teacher_profile/cubits/get_payments_cubit/get_payments_cubit.dart';
import 'package:courses/features/teacher_profile/cubits/update_payment_cubit/update_payment_cubit.dart';
import 'package:courses/features/teacher_profile/models/payment_detail.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:courses/shared/dialogs/error_dialog.dart';
import 'package:courses/shared/dialogs/loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class PaymentListItem extends StatelessWidget {
  final PaymentDetail paymentItem;
  final GetPaymentsCubit paymentsCubit;
  bool isPending;

  PaymentListItem({
    super.key,
    required this.paymentsCubit,
    required this.paymentItem,
    this.isPending = false,
  });

  @override
  Widget build(BuildContext context) {
    final translator = AppLocalizations.of(context)!;

    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
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
                ApplicationImages.sessionSVG,
                height: 30,
                width: 30,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.primary,
                  BlendMode.srcIn,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Session ${paymentItem.courseSession.id}",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${translator.session_date}: ${DateFormat('d-m-y').format(DateTime.parse(paymentItem.courseSession.sessionDate))}',
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Row(
              spacing: 10,
              children: [
                Text(
                  "${translator.dues}: ${paymentItem.amount}\$",
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                ),
                if (isPending)
                  BlocListener<UpdatePaymentCubit, UpdatePaymentState>(
                    listener: (context, state) {
                      if (state.status == SubmissionStatus.loading) {
                        showLoadingDialog(context);
                      } else if (state.status == SubmissionStatus.error) {
                        Navigator.pop(context);

                        showErrorDialog(context, state.errorMessage!);
                      } else if (state.status == SubmissionStatus.success) {
                        Navigator.pop(context);
                        paymentsCubit.changeToPaid(paymentItem);
                        paymentsCubit.getPayments(
                          teacherId: paymentsCubit.state.teacher!.id.toString(),
                        );
                      }
                    },
                    child: FilledButton.icon(
                      onPressed: () {
                        context.read<UpdatePaymentCubit>().updatePayment(
                          teacherId: paymentItem.id.toString(),
                        );
                      },
                      icon: const Icon(Icons.send),
                      label: Text(translator.pay),
                      style: FilledButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        backgroundColor: Colors.lightGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
