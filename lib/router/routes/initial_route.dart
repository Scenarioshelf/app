part of '../app_routes.dart';

@TypedGoRoute<InitialRoute>(
  path: '/',
  name: 'initial',
)
class InitialRoute extends GoRouteData {
  const InitialRoute();

  @override
  String redirect(BuildContext context, GoRouterState state) => const SplashRoute().location;
}
