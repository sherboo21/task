import 'package:flutter/material.dart';

import 'core/app/init_services.dart';
import 'core/app/task.dart';
import 'core/routing/named_router_impl.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initServices();

  runApp(TaskApp(
    appRouter: AppRouter(),
  ));
}
