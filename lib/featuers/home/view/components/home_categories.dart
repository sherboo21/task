import 'imports.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: AppSize.h55,
        color: AppColors.secondaryAppColor,
        child: AppListViewBuilder(
            scrollDirection: Axis.horizontal,
            itemCount: context.read<HomeCubit>().homeCategoriesList.length,
            itemBuilder: (context, index) => index == 0
                ? SvgPicture.asset(
                    AppIcons.editIcon,
                    fit: BoxFit.contain,
                  )
                : InkWell(
                    onTap: index == 1
                        ? null
                        : () => context.read<AppCubit>().updateState(
                            AppStateField.homeCategoriesSelected, index),
                    child: Container(
                      padding: appContainerPadding,
                      margin: EdgeInsets.symmetric(horizontal: AppSize.w8),
                      decoration: BoxDecoration(
                        color: context
                                    .watch<AppCubit>()
                                    .state
                                    .homeCategoriesSelected ==
                                index
                            ? Colors.white
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [
                          BoxShadow(
                            color: context
                                        .watch<AppCubit>()
                                        .state
                                        .homeCategoriesSelected ==
                                    index
                                ? Colors.grey.withOpacity(0.5)
                                : Colors.transparent,
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          CustomDot(
                            color: context
                                .read<HomeCubit>()
                                .homeCategoriesList[index]
                                .color,
                          ),
                          AppSize.w5.pw,
                          AppText(
                            text: context
                                .read<HomeCubit>()
                                .homeCategoriesList[index]
                                .title,
                            textWeight: FontWeight.w500,
                            maxLines: 1,
                            textOverflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                  )),
      ),
    );
  }
}
