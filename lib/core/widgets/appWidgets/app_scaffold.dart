import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_text.dart';

class AppScaffold extends StatelessWidget {
  final Widget? body, floatingActionButton, bottomNavigationBar, leading;
  final List<Widget>? actionsList;
  final String? title;
  final Color? backgroundColor;

  const AppScaffold(
      {super.key,
      required this.body,
      this.floatingActionButton,
      this.bottomNavigationBar,
      this.leading,
      this.actionsList,
      this.title,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: body,
        backgroundColor: backgroundColor,
        appBar: AppBar(
          leading: leading,
          actions: actionsList,
          title: title == null
              ? null
              : AppText(
                  text: title!,
                  textWeight: FontWeight.w600,
                  textSize: 16.sp,
                  maxLines: 1,
                  textOverflow: TextOverflow.ellipsis,
                ),
        ),
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton);
  }
}
