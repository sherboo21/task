import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helpers/extentions.dart';

import '../../helpers/app_size.dart';
import '../appWidgets/app_text.dart';

class CustomDatePicker extends StatelessWidget {
  final String title;

  const CustomDatePicker({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppText(
          text: title,
          textWeight: FontWeight.w500,
          textSize: 16.sp,
          maxLines: 1,
          textOverflow: TextOverflow.ellipsis,
        ),
        const Spacer(),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppSize.w12,
            vertical: AppSize.h10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: const Color(0xFFE2E8F0),
          ),
          child: Center(
            child: AppText(
              text: '3 May 2023',
              textSize: 16.sp,
              maxLines: 1,
              textOverflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        AppSize.w8.pw,
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppSize.w12,
            vertical: AppSize.h10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: const Color(0xFFE2E8F0),
          ),
          child: Center(
            child: AppText(
              text: '8:00 PM',
              textSize: 16.sp,
              maxLines: 1,
              textOverflow: TextOverflow.ellipsis,
            ),
          ),
        )
      ],
    );
  }
}
