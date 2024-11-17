import 'package:flutter/material.dart';
import 'package:task/core/helpers/extentions.dart';

import '../../helpers/app_size.dart';

class AppListViewBuilder extends StatelessWidget {
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;
  final Axis? scrollDirection;
  final double? hPadding, vPadding;

  const AppListViewBuilder(
      {super.key,
      required this.itemCount,
      required this.itemBuilder,
      this.scrollDirection,
      this.hPadding,
      this.vPadding});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: scrollDirection == null
          ? const NeverScrollableScrollPhysics()
          : const AlwaysScrollableScrollPhysics(),
      itemCount: itemCount,
      scrollDirection: scrollDirection ?? Axis.vertical,
      padding: EdgeInsets.symmetric(
          horizontal: hPadding ?? AppSize.w15,
          vertical: vPadding ?? AppSize.h8),
      itemBuilder: itemBuilder,
      separatorBuilder: (context, index) => AppSize.h8.ph,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      cacheExtent: 50,
      addAutomaticKeepAlives: false,
      addRepaintBoundaries: false,
      shrinkWrap: true,
    );
  }
}
