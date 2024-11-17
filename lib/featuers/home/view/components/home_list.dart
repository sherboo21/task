import 'imports.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: AppConditionalBuilder(
        condition: context.watch<HomeCubit>().state is! GetEventsLoading &&
            context.read<HomeCubit>().eventsDataModel.data != null,
        builder: (context) =>
            context.read<HomeCubit>().eventsDataModel.data!.isEmpty
                ? AppMessage(title: AppStrings.noEvents)
                : AppListViewBuilder(
                    hPadding: AppSize.w10,
                    itemCount:
                        context.read<HomeCubit>().eventsDataModel.data!.length,
                    itemBuilder: (context, index) => HomeItem(index: index)),
        fallBack: (context) => const AppListFallBack(),
      ),
    );
  }
}
