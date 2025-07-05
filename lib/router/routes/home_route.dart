part of '../app_routes.dart';

@TypedGoRoute<HomeRoute>(
  path: '/home',
  name: 'home',
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final ref = ProviderScope.containerOf(context);
    final provisionallyRegisteredUser = ref.read(provisionallyRegisteredUserControllerProvider);
    final user = ref.read(currentUserControllerProvider);

    if (provisionallyRegisteredUser != null && provisionallyRegisteredUser.name == null && user == null) {
      return const SetupUserRoute().location;
    }

    if (user != null) {
      return SessionsRoute(userId: user.id as String).location;
    }

    return const BootRoute().location;
  }
}
