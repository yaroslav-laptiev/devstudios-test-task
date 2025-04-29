import 'package:auto_route/auto_route.dart';
import 'package:devstudios_test_task/app/presentation/pages/onboarding/onboarding_root_page.dart';
import 'package:devstudios_test_task/app/presentation/pages/welcome/welcome_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: WelcomeRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: OnboardingRootRoute.page,
        ),
        // AutoRoute(page: HomeRoute.page, guards: [AuthGuard()])
      ];
}
