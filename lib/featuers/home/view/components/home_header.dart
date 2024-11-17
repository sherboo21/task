import 'imports.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ListTile(
        contentPadding: appPadding,
        title: const AppText(
          text: 'Jun 1, 2022 - Rajab 7, 1443',
          textWeight: FontWeight.w500,
        ),
        trailing: SvgPicture.asset(
          AppIcons.exportIcon,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
