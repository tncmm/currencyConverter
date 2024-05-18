import 'package:currency_converter/core/widget/snack_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:overlay_support/overlay_support.dart';

final snackBarProvider =
    NotifierProvider<SnackBarNotifier, OverlaySupportEntry?>(() {
  return SnackBarNotifier();
});

class SnackBarNotifier extends Notifier<OverlaySupportEntry?> {
  SnackBarNotifier() : super();

  @override
  OverlaySupportEntry? build() {
    return null;
  }

  void showSnackBar({
    required String message,
    String? title,
    required SnackBarType snackBarType,
    VoidCallback? onTap,
  }) {
    state?.dismiss(animate: false);
    state = showSimpleNotification(
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: TopSnackbarWidget(
          title: title,
          snackBarType: snackBarType,
          message: message,
          onPressed: onTap ?? () {},
        ),
      ),
      duration: const Duration(seconds: 3),
      background: Colors.transparent,
      elevation: 0,
      slideDismissDirection: DismissDirection.up,
      position: NotificationPosition.top,
      autoDismiss: true,
    );
  }
}
