
import 'package:devstudios_test_task/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DevstudioTestTaskApp extends StatelessWidget {

  final AppRouter router;

  const DevstudioTestTaskApp({super.key, required  this.router});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 844),
      child: MaterialApp.router(
        theme: Theme.of(context).copyWith(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routerConfig: router.config(),
      ),
    );
  }
}
