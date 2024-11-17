import 'imports.dart';

class StartDateCard extends StatelessWidget {
  const StartDateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          CustomDatePicker(title: AppStrings.startDate),
          const Divider(),
          const CustomEventRow(
              title: 'Category', value: 'General', isCategory: true),
        ],
      ),
    ).addSymmetricPadding(vVal: AppSize.h25);
  }
}
