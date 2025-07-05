import 'dart:async';

import 'package:flutter/material.dart';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:scenarioshelf/repositories/firebase/analytics/analytics_repository.dart';
import 'package:scenarioshelf/utils/logger.dart';

part 'log_observer.g.dart';

@riverpod
LogObserver logObserver(Ref ref) {
  final analytics = ref.read(analyticsRepositoryProvider);
  return LogObserver(analytics: analytics);
}

class LogObserver extends FirebaseAnalyticsObserver {
  LogObserver({required super.analytics});

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    logger.i('Routing: Pushed ${route.settings.name}');
    unawaited(analytics.logScreenView(screenName: route.settings.name));
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    logger.i('Routing: Replaced ${oldRoute?.settings.name} with ${newRoute?.settings.name}');
    unawaited(analytics.logScreenView(screenName: newRoute?.settings.name));
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    logger.i('Routing: Removed ${route.settings.name}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (previousRoute == null) {
      return;
    }

    logger.i('Routing: Popped ${previousRoute.settings.name}');
    unawaited(analytics.logScreenView(screenName: previousRoute.settings.name));
  }
}
