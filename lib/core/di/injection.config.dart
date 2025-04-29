// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:devstudios_test_task/app/data/repository/demo_repository_impl.dart'
    as _i550;
import 'package:devstudios_test_task/app/data/services/demo/demo_service.dart'
    as _i60;
import 'package:devstudios_test_task/app/domain/repository/demo_repository.dart'
    as _i88;
import 'package:devstudios_test_task/core/di/injection_module.dart' as _i105;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectionModule = _$InjectionModule();
    gh.lazySingleton<_i361.Dio>(() => injectionModule.dio);
    gh.lazySingleton<_i60.DemoService>(
        () => injectionModule.getDemoService(gh<_i361.Dio>()));
    gh.lazySingleton<_i88.DemoRepository>(
        () => _i550.DemoRepositoryImpl(gh<_i60.DemoService>()));
    return this;
  }
}

class _$InjectionModule extends _i105.InjectionModule {}
