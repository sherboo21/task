import '../../addEvent/view/components/imports.dart';

class AddEventView extends StatelessWidget {
  const AddEventView({super.key});

  @override
  Widget build(BuildContext context) {
    return AddEventAppBar(
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          AppSize.h15.ph,
          CustomContainer(
            child: Center(
                child: AppTextField(
              isFill: false,
              hint: AppStrings.addTitle,
              enabled: true,
            )),
          ),
          const StartDateCard(),
          const EndDateCard(),
          CustomContainer(
            child: Center(
                child: AppTextField(
              isFill: false,
              bPadding: AppSize.h60,
              hint: AppStrings.details,
              enabled: true,
            )),
          ),
        ],
      ),
    );
  }
}
