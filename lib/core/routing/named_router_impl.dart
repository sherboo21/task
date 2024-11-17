import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/featuers/addEvent/view/add_event_view.dart';
import 'package:task/featuers/event/view/event_view.dart';

import '../../featuers/layOut/logic/lay_out_cubit.dart';
import '../../featuers/layOut/view/lay_out_view.dart';
import '../di/dependency_injection.dart';
import 'named_router.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.layoutRoute:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) => getIt<LayoutCubit>(),
                child: const LayOutView()));
      case Routes.addEventRoute:
        return MaterialPageRoute(builder: (_) => const AddEventView());
      case Routes.eventRoute:
        return MaterialPageRoute(builder: (_) => const EventView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
