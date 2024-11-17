import '../../../../core/networking/network/result.dart';
import '../models/events.dart';

abstract class HomeRepository {
  Future<Result<EventsDataModel>> getEvents();
}
