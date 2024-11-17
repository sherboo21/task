import 'imports.dart';

class HomeItem extends StatelessWidget {
  final int index;

  const HomeItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomEventCard(
          index: index,
          title: context
                      .read<HomeCubit>()
                      .eventsDataModel
                      .data![index]
                      .title
                      ?.isNotEmpty ==
                  true
              ? context.read<HomeCubit>().eventsDataModel.data![index].title!
              : '-',
          date: context
                      .read<HomeCubit>()
                      .eventsDataModel
                      .data![index]
                      .eventDate
                      ?.isNotEmpty ==
                  true
              ? context
                  .read<HomeCubit>()
                  .eventsDataModel
                  .data![index]
                  .eventDate!
              : '-',
          remainingTime: context
              .read<HomeCubit>()
              .eventsDataModel
              .data![index]
              .remainingDays,
        ),
        Positioned(
            top: AppSize.h17,
            child: SvgPicture.asset(
              AppIcons.borderIcon,
              fit: BoxFit.contain,
              colorFilter: ColorFilter.mode(
                  index == 0 || index == 4
                      ? const Color(0xFF6B7DCF)
                      : index == 1
                          ? const Color(0xFFF2BA0C)
                          : const Color(0xFF0CB450),
                  BlendMode.srcIn),
            ))
      ],
    );
  }
}
