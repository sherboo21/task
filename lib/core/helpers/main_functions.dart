import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/appWidgets/app_message.dart';
import 'app_size.dart';
import 'extentions.dart';

/// Show Alert Dialog ///
customAlertDialog({
  required Widget content,
  bool? barrierDismissible,
  type,
  double? marginHPadding,
  radius,
  duration,
  hPadding,
  vPadding,
  width,
}) {
  showDialog(
      context: GlobalContextExt.globalContext!,
      barrierDismissible: barrierDismissible ?? true,
      builder: (context) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(radius ?? 15.r),
                    color: Colors.white),
                padding: EdgeInsets.symmetric(
                    horizontal: hPadding ?? 0.0, vertical: vPadding ?? 0.0),
                margin: EdgeInsets.symmetric(horizontal: marginHPadding ?? 0.0),
                child: content,
              ),
            ],
          ));
  type == null
      ? null
      : Future.delayed(Duration(milliseconds: duration ?? 2000), () {
          if (GlobalContextExt.globalContext!.mounted) {
            GlobalContextExt.globalContext!.pop();
          }
        });
}

appWarningAlertDialogMessage({required String title}) {
  return customAlertDialog(
      duration: 3000,
      width: 300.w,
      marginHPadding: AppSize.w40,
      vPadding: AppSize.h25,
      type: true,
      barrierDismissible: false,
      content: AppMessage(title: title));
}
