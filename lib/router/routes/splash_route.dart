part of '../app_routes.dart';

@TypedGoRoute<SplashRoute>(
  path: '/splash',
  name: 'splash',
)
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SplashPage();
}
