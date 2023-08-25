import 'package:cv_afrik/core/route_name.dart';
import 'package:cv_afrik/vus/application/application.dart';
import 'package:cv_afrik/vus/auths/onbording.dart';
import 'package:go_router/go_router.dart';

class RoutesConfigurations {
  GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      name: RouteName.onboarding,
      builder: (context, state) => const OnBoardingPage(),
    ),
    GoRoute(
      path: '/application',
      name: RouteName.application,
      builder: (context, state) => const Application(),
    ),
  ]);
}
