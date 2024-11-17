import 'imports.dart';

class LayoutBottomNavBar extends StatelessWidget {
  const LayoutBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: context.watch<LayoutCubit>().state,
      onTap: (index) => context.read<LayoutCubit>().updateIndex(index),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.mainAppColor,
      selectedLabelStyle:
          TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp),
      items: [
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.homeIcon,
            ),
            label: AppStrings.home),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.tasksIcon,
            ),
            label: AppStrings.tasks),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.notesIcon,
            ),
            label: AppStrings.notes),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.reminderIcon,
            ),
            label: AppStrings.reminder),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.archivesIcon,
            ),
            label: AppStrings.archives)
      ],
    );
  }
}
