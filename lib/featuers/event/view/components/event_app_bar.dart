import 'imports.dart';

class EventAppBar extends StatelessWidget {
  final Widget body;

  const EventAppBar({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF475569),
          )),
      actionsList: [
        SvgPicture.asset(
          AppIcons.addIcon,
          fit: BoxFit.contain,
        ),
        AppText(
          text: AppStrings.addToCalendar,
          textWeight: FontWeight.w500,
          textSize: 16.sp,
          maxLines: 1,
          textOverflow: TextOverflow.ellipsis,
        ).addOnlyPadding(
            tVal: AppSize.h12, rVal: AppSize.w12, lVal: AppSize.w8),
      ],
      body: body,
    );
  }
}
