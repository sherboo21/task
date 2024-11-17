import 'components/imports.dart';

class EventView extends StatelessWidget {
  const EventView({super.key});

  @override
  Widget build(BuildContext context) {
    return EventAppBar(
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: appPadding,
        children: [
          const Divider(),
          const EventDetails(),
          AppSize.h15.ph,
          const Divider(),
          AppSize.h25.ph,
          CustomEventRow(title: AppStrings.alert, value: 'At time'),
          const Divider(),
          CustomEventRow(title: AppStrings.repeat, value: 'None'),
          const Divider(),
          CustomEventRow(title: AppStrings.priority, value: 'Low'),
          const Divider(),
          AppSize.h12.ph,
          Row(
            children: [
              SvgPicture.asset(
                AppIcons.notesIcon,
                fit: BoxFit.contain,
                colorFilter:
                    const ColorFilter.mode(Color(0xFF94A3B8), BlendMode.srcIn),
              ),
              AppSize.w8.pw,
              AppText(
                text: AppStrings.standUpTeamMeetingOnZoom,
                textSize: 16.sp,
              ),
            ],
          )
        ],
      ),
    );
  }
}
