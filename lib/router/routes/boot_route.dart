part of '../app_routes.dart';

@TypedGoRoute<BootRoute>(
  path: '/boot',
  name: 'boot',
  routes: [
    TypedGoRoute<SignInRoute>(
      path: 'sign-in',
      name: 'sign-in',
    ),
    TypedGoRoute<SignUpRoute>(
      path: 'sign-up',
      name: 'sign-up',
    ),
  ],
)
class BootRoute extends GoRouteData {
  const BootRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const BootPage();
}
