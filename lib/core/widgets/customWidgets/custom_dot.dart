import 'package:flutter/material.dart';

import '../../helpers/app_size.dart';

class CustomDot extends StatelessWidget {
  final Color color;

  const CustomDot({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.h8,
      width: AppSize.w8,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}
