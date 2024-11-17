part of 'home_cubit.dart';

@immutable
sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}

class GetEventsSuccess extends HomeState {
  final EventsDataModel data;

  const GetEventsSuccess(this.data);

  @override
  List<Object?> get props => [data];
}

class GetEventsLoading extends HomeState {}

final class GetEventsError extends HomeState {
  final String error;

  const GetEventsError(this.error);

  @override
  List<Object?> get props => [error];
}
