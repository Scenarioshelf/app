part of '../app_routes.dart';

@TypedGoRoute<RecordRoute>(
  path: '/record',
  name: 'record',
)
class RecordRoute extends GoRouteData {
  const RecordRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => CustomTransitionPage(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Record'),
          ),
        ),
        transitionDuration: const Duration(milliseconds: 200),
        reverseTransitionDuration: const Duration(milliseconds: 200),
        transitionsBuilder: (context, animation, secondaryAnimation, child) => SlideTransition(
          position: animation.drive(
            Tween<Offset>(
              begin: const Offset(0, 0.5),
              end: Offset.zero,
            ),
          ),
          child: child,
        ),
      );
}
