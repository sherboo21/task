import 'app_cubit.dart';

class AppState {
  final int homeCategoriesSelected;

  AppState({
    required this.homeCategoriesSelected,
  });

  // Updated copyWith to take a Map of field names and values
  AppState copyWith(Map<String, dynamic> updates) {
    return AppState(
      homeCategoriesSelected:
          updates[AppStateField.homeCategoriesSelected.toString()] ??
              homeCategoriesSelected,
    );
  }
}
