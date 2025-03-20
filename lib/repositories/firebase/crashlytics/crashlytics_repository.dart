import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:scenarioshelf/providers/current_user/current_user_controller.dart';

part 'crashlytics_repository.g.dart';

@Riverpod(keepAlive: true)
FirebaseCrashlytics crashlyticsRepository(Ref ref) {
  final crashlyticsRepository = FirebaseCrashlytics.instance;
  ref.listen(currentUserControllerProvider, (_, next) async {
    await crashlyticsRepository.setUserIdentifier(next?.id as String? ?? '');
  });

  return crashlyticsRepository;
}
