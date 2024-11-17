import 'imports.dart';

class HomeFilter extends StatelessWidget {
  const HomeFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          AppText(
            text: AppStrings.all,
            textWeight: FontWeight.w600,
            textSize: 18.sp,
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: AppColors.secondaryAppColor,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  AppIcons.calendarIcon,
                  fit: BoxFit.contain,
                ),
                SvgPicture.asset(
                  AppIcons.lineIcon,
                  fit: BoxFit.contain,
                ),
                SvgPicture.asset(
                  AppIcons.sortIcon,
                  fit: BoxFit.contain,
                )
              ],
            ),
          ),
          AppSize.w15.pw,
          SvgPicture.asset(
            AppIcons.arrowsIcon,
            fit: BoxFit.contain,
          )
        ],
      ).addAllPadding(15),
    );
  }
}
