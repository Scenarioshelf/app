part of '../app_routes.dart';

@TypedGoRoute<RecordRoute>(
  path: '/record',
  name: 'record',
)
class RecordRoute extends GoRouteData {
  const RecordRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => SlideTransactionPage(
        name: 'record',
        child: const RecordPage(),
      );
}
