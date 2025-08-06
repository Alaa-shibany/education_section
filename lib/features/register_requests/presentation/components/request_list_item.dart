import 'package:courses/config/constants/application_images.dart';
import 'package:courses/core/services/status.dart';
import 'package:courses/features/register_requests/cubits/accept_request_cubit/accept_request_cubit.dart';
import 'package:courses/features/register_requests/cubits/get_requests_cubit/get_requests_cubit.dart';
import 'package:courses/features/register_requests/models/accept_request_request_body_model.dart';
import 'package:courses/features/register_requests/models/register_request_model.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:courses/shared/dialogs/loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class RequestListItem extends StatelessWidget {
  final RegisterRequestModel requestModel;

  final VoidCallback onAccept;

  const RequestListItem({
    super.key,
    required this.requestModel,

    required this.onAccept,
  });

  @override
  Widget build(BuildContext context) {
    final translator = AppLocalizations.of(context)!;
    final acceptRequestCubit = context.read<AcceptRequestCubit>();
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
                ApplicationImages.requestSVG,
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
                    "${translator.course}: ${requestModel.course}",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "${translator.student}: ${requestModel.student}",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      // fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Row(
              spacing: 10,
              children: [
                Text(
                  '${translator.down_payment}: ${requestModel.payment}\$',
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                ),
                BlocConsumer<AcceptRequestCubit, AcceptRequestState>(
                  listener: (context, state) {
                    if (state.status == SubmissionStatus.loading) {
                      showLoadingDialog(context);
                    } else if (state.status == SubmissionStatus.error) {
                      state.failure!.handle(context, onRetry: () {});
                    } else if (state.status == SubmissionStatus.success) {
                      context.pop();
                      context
                          .read<GetRequestsCubit>()
                          .pagingController
                          .refresh();
                    }
                  },
                  builder: (context, state) {
                    return FilledButton.icon(
                      onPressed: () {
                        acceptRequestCubit.acceptRequest(
                          body: AcceptRequestRequestBodyModel(
                            id: requestModel.id,
                          ),
                        );
                      },
                      icon: const Icon(Icons.check),
                      label: Text(translator.accept),
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
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
