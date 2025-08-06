import 'package:courses/core/services/failure_service/failure.dart';
import 'package:courses/shared/dialogs/internet_dialog.dart';
import 'package:flutter/widgets.dart';

class InternetFailure extends Failure {
  InternetFailure(super.message);

  @override
  Future<void> handle(BuildContext context, {void Function()? onRetry}) async {
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    }
    showNoInternetDialog(context, onRetry);
  }
}
