import 'package:flutter/material.dart';

import '../../helpers/app_size.dart';
import '../../theme/app_colors.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;

  const CustomContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: AppSize.w15, vertical: AppSize.h8),
      decoration: BoxDecoration(color: AppColors.scaffoldColor),
      child: child,
    );
  }
}
