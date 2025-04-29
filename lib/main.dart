import 'dart:async';

import 'package:devstudios_test_task/application.dart';
import 'package:devstudios_test_task/core/di/injection.dart';
import 'package:devstudios_test_task/core/routing/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runZonedGuarded(
    () {
      WidgetsFlutterBinding.ensureInitialized();
      configureDependencies();
      final router = AppRouter();
      runApp(
        DevstudioTestTaskApp(
          router: router,
        ),
      );
    },
    (e, st) {
      // report error
    },
  );
}
