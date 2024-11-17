import 'imports.dart';

class AddEventAppBar extends StatelessWidget {
  final Widget body;

  const AddEventAppBar({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: AppColors.secondaryAppColor,
      leading: Center(
          child: InkWell(
        onTap: () => context.pop(),
        child: AppText(
          text: AppStrings.cancel,
          textWeight: FontWeight.w500,
          textSize: 12.sp,
          textColor: const Color(0xFFFE5960),
          maxLines: 1,
          textOverflow: TextOverflow.ellipsis,
        ),
      )),
      title: AppStrings.newEvent,
      actionsList: [
        InkWell(
          onTap: () => context.pushNamed(Routes.eventRoute),
          child: SvgPicture.asset(
            AppIcons.addButtonIcon,
            fit: BoxFit.contain,
          ).addSymmetricPadding(hVal: AppSize.w15),
        )
      ],
      body: body,
    );
  }
}
