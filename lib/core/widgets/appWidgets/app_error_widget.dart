import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:task/core/helpers/extentions.dart';

import '../../helpers/app_imgs.dart';
import '../../helpers/app_size.dart';
import 'app_scaffold.dart';
import 'app_text.dart';

class AppErrorWidgetClass extends StatelessWidget {
  final FlutterErrorDetails errorDetails;

  const AppErrorWidgetClass({super.key, required this.errorDetails});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Error Widget',
      home: AppScaffold(
          body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(
            horizontal: AppSize.w10, vertical: AppSize.h20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              AppAnimations.appErrorAnimation,
              fit: BoxFit.contain,
            ),
            AppSize.h15.ph,
            AppText(
              text: " ' ${errorDetails.exceptionAsString()}' ",
              textAlign: TextAlign.center,
              textSize: 24.sp,
              textWeight: FontWeight.w700,
            )
          ],
        ),
      )),
    );
  }
}
