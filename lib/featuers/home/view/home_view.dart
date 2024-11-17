import 'package:task/featuers/home/view/components/imports.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>(),
      child: const CustomScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        slivers: [HomeHeader(), HomeCategories(), HomeFilter(), HomeList()],
      ),
    );
  }
}
