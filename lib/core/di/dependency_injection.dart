import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:task/featuers/home/data/models/events.dart';
import 'package:task/featuers/layOut/logic/lay_out_cubit.dart';

import '../../featuers/home/data/apis/home_api_services.dart';
import '../../featuers/home/data/repos/home_repo.dart';
import '../../featuers/home/logic/home_cubit.dart';
import '../helpers/appCubit/app_cubit.dart';
import '../networking/network/app_constants.dart';
import '../networking/network/base_consumer.dart';
import '../networking/network/dio_consumer.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  /// Register DioConsumer to handle API calls using Dio ///
  final logger = PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    responseHeader: false,
    error: true,
    compact: true,
    maxWidth: 100,
  );
  final dio = Dio(BaseOptions(
    baseUrl: AppApiConstants.baseUrl,
    receiveDataWhenStatusError: true,
  ));
  dio.interceptors.add(logger);

  getIt.registerLazySingleton<Dio>(() => dio);
  getIt.registerLazySingleton<BaseConsumer>(() => DioConsumer(getIt<Dio>()));

  /// FOR APP CUBIT ///
  getIt.registerFactory<AppCubit>(() => AppCubit());

  /// FOR LAYOUT CUBIT ///
  getIt.registerFactory<LayoutCubit>(() => LayoutCubit());

  /// FOR HOME ///
  getIt.registerLazySingleton<HomeRepository>(() => HomeServices());
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt<HomeRepository>()));
  getIt.registerLazySingleton<EventsDataModel>(() => EventsDataModel());
}
