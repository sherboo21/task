import 'components/imports.dart';

class LayOutView extends StatelessWidget {
  const LayOutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, int>(
      builder: (context, state) {
        return AppScaffold(
            leading: Image.asset(
              AppImages.avatarImage,
              fit: BoxFit.contain,
            ).addSymmetricPadding(hVal: AppSize.w5),
            actionsList: [
              SvgPicture.asset(
                AppIcons.searchIcon,
                fit: BoxFit.contain,
              ).addSymmetricPadding(hVal: AppSize.w15),
            ],
            title: AppStrings.home,
            body: IndexedStack(
              index: state,
              children: context.read<LayoutCubit>().screens,
            ),
            bottomNavigationBar: const LayoutBottomNavBar(),
            floatingActionButton: state == 0
                ? FloatingActionButton(
                    onPressed: () => context.pushNamed(Routes.addEventRoute),
                    backgroundColor: AppColors.mainAppColor,
                    elevation: 0.0,
                    child: const Icon(Icons.add),
                  )
                : null);
      },
    );
  }
}
