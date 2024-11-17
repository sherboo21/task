import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../helpers/app_imgs.dart';
import '../../helpers/app_size.dart';
import '../../helpers/extentions.dart';
import '../../theme/app_colors.dart';
import '../appWidgets/app_text.dart';

class CustomEventCard extends StatelessWidget {
  final int index;
  final String? title, date, remainingTime;

  const CustomEventCard(
      {super.key,
      required this.index,
      required this.title,
      required this.date,
      required this.remainingTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: appContainerPadding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: const Color(0xFFE2E8F0))),
      child: Row(
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: title!,
                  textWeight: FontWeight.w500,
                  maxLines: 1,
                  textOverflow: TextOverflow.ellipsis,
                  textSize: 16.sp,
                ),
                AppSize.h5.ph,
                Row(
                  children: [
                    SvgPicture.asset(
                      AppIcons.calendarIcon2,
                      fit: BoxFit.contain,
                    ),
                    AppSize.w2.pw,
                    AppText(
                      text: date!,
                      maxLines: 1,
                      textOverflow: TextOverflow.ellipsis,
                      textColor: AppColors.subTitleColor,
                    ),
                    AppSize.w20.pw,
                    SvgPicture.asset(
                      AppIcons.checkIcon,
                      fit: BoxFit.contain,
                    ),
                    AppSize.w2.pw,
                    Flexible(
                      child: AppText(
                        text: '4',
                        maxLines: 1,
                        textOverflow: TextOverflow.ellipsis,
                        textColor: AppColors.subTitleColor,
                      ),
                    ),
                    AppSize.w5.pw,
                    SvgPicture.asset(
                      AppIcons.attachmentIcon,
                      fit: BoxFit.contain,
                    ),
                    AppSize.w2.pw,
                    Flexible(
                      child: AppText(
                        text: '1',
                        maxLines: 1,
                        textOverflow: TextOverflow.ellipsis,
                        textColor: AppColors.subTitleColor,
                      ),
                    ),
                    AppSize.w5.pw,
                    SvgPicture.asset(
                      AppIcons.recordIcon,
                      fit: BoxFit.contain,
                    ),
                  ],
                )
              ],
            ),
          ),
          Visibility(
            visible: remainingTime?.isNotEmpty == true,
            child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSize.w17, vertical: AppSize.h12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: AppColors.secondaryAppColor),
                child: Column(
                  children: [
                    AppText(
                      text: remainingTime!.split(' ').first,
                      textSize: 18.sp,
                      textWeight: FontWeight.w600,
                      textColor: index == 0 ? const Color(0xFFFE5960) : null,
                    ),
                    Visibility(
                      visible: remainingTime!.contains(' '),
                      child: AppText(
                        text: remainingTime!.split(' ').last,
                        textColor: AppColors.subTitleColor,
                        textSize: 12.sp,
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
