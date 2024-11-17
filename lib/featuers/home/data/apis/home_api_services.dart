import 'package:task/featuers/home/data/models/events.dart';

import '../../../../core/networking/network/network_call.dart';
import '../../../../core/networking/network/result.dart';
import '../repos/home_repo.dart';
import 'home_api_constants.dart';

class HomeServices implements HomeRepository {
  @override
  Future<Result<EventsDataModel>> getEvents() async {
    return await networkCall<EventsDataModel>(
      method: ServerMethods.GET,
      path: HomeApiConstants.getEvents,
      fromJson: (data) => EventsDataModel.fromJson(data),
    );
  }
}
