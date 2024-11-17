import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/featuers/home/view/home_view.dart';

class LayoutCubit extends Cubit<int> {
  LayoutCubit() : super(0);

  /// update index function to update the index onTap in BottomNavigationBar ///

  void updateIndex(int index) => emit(index);

  /// for navigation button on single page ///

  void getHome() => emit(0);

  void getTasks() => emit(1);

  void getNotes() => emit(2);

  void getReminder() => emit(3);

  void getArchives() => emit(4);

  final List<Widget> screens = [
    const HomeView(),
    const Center(child: Text('Tasks')),
    const Center(child: Text('Notes')),
    const Center(child: Text('Reminder')),
    const Center(child: Text('Archives')),
  ];
}
