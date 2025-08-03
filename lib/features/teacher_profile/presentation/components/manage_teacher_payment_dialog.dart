import 'package:courses/core/services/service_locator.dart';
import 'package:courses/core/services/status.dart';

import 'package:courses/features/teacher_profile/cubits/get_payments_cubit/get_payments_cubit.dart';
import 'package:courses/features/teacher_profile/cubits/update_payment_cubit/update_payment_cubit.dart';
import 'package:courses/features/teacher_profile/presentation/components/payment_list_item.dart';
import 'package:courses/l10n/app_localizations.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void showManageTeacherPaymentDialog({
  required BuildContext context,
  required GetPaymentsCubit paymentCubit,
  required bool isPending,
}) {
  final translator = AppLocalizations.of(context)!;

  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: translator.manage_subject,
    transitionDuration: const Duration(milliseconds: 300),
    pageBuilder: (context, anim1, anim2) => const SizedBox(),
    transitionBuilder: (context, anim1, anim2, child) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => sl<UpdatePaymentCubit>()),
          BlocProvider.value(value: paymentCubit),
        ],
        child: BlocBuilder<GetPaymentsCubit, GetPaymentsState>(
          builder: (context, state) {
            return ScaleTransition(
              scale: Tween<double>(begin: 0.9, end: 1.0).animate(anim1),
              child: FadeTransition(
                opacity: anim1,
                child: AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  title: Text(
                    isPending ? translator.pending_dues : translator.paid_dues,
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                  ),
                  content: SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: state.status == SubmissionStatus.loading
                        ? Center(child: CircularProgressIndicator())
                        : paymentCubit.state.data!.isEmpty
                        ? Center(child: Text("No dues for this teacher"))
                        : ListView.builder(
                            itemCount: paymentCubit.state.data!.length,
                            itemBuilder: (context, index) {
                              final paymentItem =
                                  paymentCubit.state.data![index];
                              return isPending && paymentItem.isPaid
                                  ? SizedBox()
                                  : PaymentListItem(
                                      paymentsCubit: paymentCubit,
                                      paymentItem: paymentItem,
                                      isPending: isPending,
                                    );
                            },
                          ),
                  ),
                ),
              ),
            );
          },
        ),
      );
    },
  );
}
