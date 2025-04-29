import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'demo_service.g.dart';

@RestApi()
abstract class DemoService {
  factory DemoService(Dio dio, {String baseUrl}) = _DemoService;

  @GET('/what/a/route')
  Future<dynamic> doSomething();

}