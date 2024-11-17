import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/di/dependency_injection.dart';
import 'package:task/core/helpers/app_strings.dart';
import 'package:task/featuers/home/data/models/events.dart';
import 'package:task/featuers/home/data/repos/home_repo.dart';

import '../data/models/home_categories.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository _homeRepository;

  HomeCubit(this._homeRepository) : super(HomeInitial()) {
    onInit();
  }

  Future<void> onInit() async {
    try {
      await Future.wait<void>([
        getEvents(),
      ]);
    } catch (e) {
      log('Error fetching data $e', name: 'Error message');
    }
  }

  final List<HomeCategories> homeCategoriesList = [
    HomeCategories(
      color: Colors.transparent,
      title: '',
    ),
    HomeCategories(
      color: Colors.transparent,
      title: AppStrings.all,
    ),
    HomeCategories(
      color: const Color(0xFFFE5960),
      title: AppStrings.general,
    ),
    HomeCategories(
      color: const Color(0xFF0CB450),
      title: AppStrings.events,
    ),
    HomeCategories(
      color: const Color(0xFFF2BA0C),
      title: AppStrings.holidays,
    ),
    HomeCategories(
      color: const Color(0xFF6B7DCF),
      title: AppStrings.events,
    ),
  ];

  var eventsDataModel = getIt<EventsDataModel>();

  /// get events ///
  getEvents() => _onGetEvents();

  void _onGetEvents() async {
    emit(GetEventsLoading());
    final result = await _homeRepository.getEvents();
    result.when(
      success: (response) {
        emit(GetEventsSuccess(response));
        eventsDataModel = response;
      },
      failure: (String errorMessage) => emit(GetEventsError(errorMessage)),
    );
  }
}
