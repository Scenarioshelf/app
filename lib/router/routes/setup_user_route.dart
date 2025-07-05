part of '../app_routes.dart';

@TypedGoRoute<SetupUserRoute>(
  path: '/setup-user',
  name: 'setup-user',
)
class SetupUserRoute extends GoRouteData {
  const SetupUserRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SetupUserPage();
}
