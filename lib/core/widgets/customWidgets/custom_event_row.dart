import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helpers/extentions.dart';

import '../../helpers/app_size.dart';
import '../appWidgets/app_text.dart';
import 'custom_dot.dart';

class CustomEventRow extends StatelessWidget {
  final String title, value;
  final bool? isCategory;

  const CustomEventRow(
      {super.key, required this.title, required this.value, this.isCategory});

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
        Row(
          children: [
            Visibility(
              visible: isCategory == true,
              child: const CustomDot(
                color: Color(0xFF0E8345),
              ).addSymmetricPadding(hVal: AppSize.w8),
            ),
            AppText(
              text: value,
              textSize: 16.sp,
              textColor: const Color(0xFF475569),
              maxLines: 1,
              textOverflow: TextOverflow.ellipsis,
            ),
            AppSize.w8.pw,
            const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF475569),
            )
          ],
        ),
      ],
    );
  }
}
