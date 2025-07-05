part of '../app_routes.dart';

@TypedGoRoute<SessionsRoute>(
  path: '/sessions/:userId',
  name: 'sessions',
)
class SessionsRoute extends GoRouteData {
  const SessionsRoute({
    required this.userId,
  });

  final String userId;

  @override
  Widget build(BuildContext context, GoRouterState state) => SessionsPage(userId: userId as ID);
}
