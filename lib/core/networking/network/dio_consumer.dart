import 'package:dio/dio.dart';

import '../exceptions/dio_error_handler.dart';
import 'base_consumer.dart';

class DioConsumer implements BaseConsumer {
  const DioConsumer(this.dio);

  final Dio dio;

  @override
  Future<Response<T>> delete<T>(String path,
      {Map<String, dynamic>? queryParameters, Object? data}) {
    return _errorHandlerTryCatch(() async {
      return await dio.delete<T>(path,
          queryParameters: queryParameters,
          data: data,
          options: Options(
            followRedirects: false,
            //Will Not Throw Errors
            validateStatus: (status) => true,
          ));
    });
  }

  @override
  Future<Response<T>> get<T>(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) {
    return _errorHandlerTryCatch(() async {
      return await dio.get<T>(path,
          queryParameters: queryParameters,
          options: Options(
            followRedirects: false,
            //Will Not Throw Errors
            validateStatus: (status) => true,
          ));
    });
  }

  @override
  Future<Response<T>> post<T>(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) {
    return _errorHandlerTryCatch(() async {
      return await dio.post<T>(path,
          data: data,
          queryParameters: queryParameters,
          options: Options(
            followRedirects: false,
            //Will Not Throw Errors
            validateStatus: (status) => true,
          ));
    });
  }

  @override
  Future<Response<T>> put<T>(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) {
    return _errorHandlerTryCatch(() async {
      return await dio.put<T>(path,
          data: data,
          queryParameters: queryParameters,
          options: Options(
            followRedirects: false,
            //Will Not Throw Errors
            validateStatus: (status) => true,
          ));
    });
  }
}

Future<T> _errorHandlerTryCatch<T>(Future<T> Function() function) async {
  try {
    return await function();
  } catch (e) {
    throw DioErrorHandler.handle(e);
  }
}
