part of '../app_routes.dart';

@TypedGoRoute<EmailVerificationRoute>(
  path: '/email-verification',
  name: 'email-verification',
)
class EmailVerificationRoute extends GoRouteData {
  const EmailVerificationRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const EmailVerificationPage();
}
