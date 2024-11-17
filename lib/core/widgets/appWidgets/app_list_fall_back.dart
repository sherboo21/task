import 'package:flutter/material.dart';

import 'app_shimmer.dart';

class AppListFallBack extends StatelessWidget {
  final int? count;

  const AppListFallBack({super.key, this.count});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: count ?? 10,
      itemBuilder: (context, index) => const AppShimmer(
        padding: 50,
      ),
    );
  }
}
