import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_state.dart';

enum AppStateField { homeCategoriesSelected }

class AppCubit extends Cubit<AppState> {
  AppCubit()
      : super(AppState(
          homeCategoriesSelected: 2,
        ));

  void updateState<T>(AppStateField field, T value) {
    final updatedState = state.copyWith({field.toString(): value});
    emit(updatedState);
  }
}
