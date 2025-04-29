
import 'package:dartz/dartz.dart';
import 'package:devstudios_test_task/app/data/services/demo/demo_service.dart';
import 'package:devstudios_test_task/app/domain/repository/demo_repository.dart';
import 'package:devstudios_test_task/core/failure/failure.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DemoRepository)
class DemoRepositoryImpl implements DemoRepository {

  final DemoService _service;

  DemoRepositoryImpl(this._service);

  @override
  Future<Either<Failure, dynamic>> doSomething() async {
    try {
      final result = _service.doSomething();
      return Right(result);
    } catch (e, st) {
      return Left(DemoFailure(e.toString(), st));
    }
  }
}