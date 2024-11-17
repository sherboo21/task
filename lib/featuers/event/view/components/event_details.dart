import 'imports.dart';

class EventDetails extends StatelessWidget {
  const EventDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppText(
          text: 'Daily meeting',
          textWeight: FontWeight.w600,
          textAlign: TextAlign.center,
          textSize: 24.sp,
        ),
        AppSize.h15.ph,
        AppText(
          text: '7 Jumada Al-Thani 1443 - 13 June 2020',
          textWeight: FontWeight.w500,
          textAlign: TextAlign.center,
          textSize: 16.sp,
          textColor: AppColors.subTitleColor,
        ),
        AppSize.h8.ph,
        AppText(
          text: '8:00PM : 9:00PM',
          textWeight: FontWeight.w500,
          textAlign: TextAlign.center,
          textSize: 16.sp,
          textColor: AppColors.subTitleColor,
        ),
        AppSize.h15.ph,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomTimeCard(
              text: '20',
              type: 'DAY',
            ),
            AppSize.w8.pw,
            const CustomTimeCard(
              text: '08',
              type: 'MIN',
            ),
            AppSize.w8.pw,
            const CustomTimeCard(
              text: '35',
              type: 'SEC',
            ),
          ],
        ),
      ],
    );
  }
}
