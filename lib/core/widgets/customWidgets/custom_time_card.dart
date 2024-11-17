import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helpers/app_size.dart';
import '../../theme/app_colors.dart';
import '../appWidgets/app_text.dart';

class CustomTimeCard extends StatelessWidget {
  final String text, type;

  const CustomTimeCard({super.key, required this.text, required this.type});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: AppSize.w12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.r),
              color: AppColors.secondaryAppColor),
          child: Column(
            children: [
              AppText(
                text: text,
                textSize: 20.sp,
                textWeight: FontWeight.w600,
              ),
              AppText(
                text: type,
                textColor: AppColors.subTitleColor,
                textWeight: FontWeight.w500,
              ),
            ],
          )),
    );
  }
}
