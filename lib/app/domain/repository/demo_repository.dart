
import 'package:dartz/dartz.dart';
import 'package:devstudios_test_task/core/failure/failure.dart';

abstract class DemoRepository {

  Future<Either<Failure, dynamic>> doSomething();

}