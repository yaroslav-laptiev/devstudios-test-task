import 'package:devstudios_test_task/app/data/services/demo/demo_service.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InjectionModule {
  @lazySingleton
  Dio get dio => Dio()
    ..options.baseUrl = const String.fromEnvironment('BASE_URL')
    ..interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // Attach Auth header here if exists
          return handler.next(options);
        },
      ),
    )
    ..interceptors.add(
      LogInterceptor(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
      ),
    );


  @lazySingleton
  DemoService getDemoService(Dio dio) => DemoService(dio);

}
