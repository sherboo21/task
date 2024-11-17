import 'imports.dart';

class EndDateCard extends StatelessWidget {
  const EndDateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          CustomDatePicker(title: AppStrings.endDate),
          const Divider(),
          CustomEventRow(title: AppStrings.alert, value: 'At time'),
          const Divider(),
          CustomEventRow(title: AppStrings.repeat, value: 'None'),
          const Divider(),
          CustomEventRow(title: AppStrings.priority, value: 'Low'),
        ],
      ),
    ).addOnlyPadding(bVal: AppSize.h25);
  }
}
