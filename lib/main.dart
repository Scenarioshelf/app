import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:scenarioshelf/constants/themes/app_color.dart';
import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/repositories/firebase/analytics/analytics_repository.dart';
import 'package:scenarioshelf/repositories/firebase/firebase_options/dev/firebase_options.dart' as dev_firebase_options;
import 'package:scenarioshelf/repositories/firebase/firebase_options/prod/firebase_options.dart' as prod_firebase_options;
import 'package:scenarioshelf/repositories/firebase/firebase_options/stg/firebase_options.dart' as stg_firebase_options;
import 'package:scenarioshelf/router/router.dart';
import 'package:scenarioshelf/utils/environment.dart';
import 'package:scenarioshelf/utils/logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await initializeDateFormatting('ja_JP');
  await AppTrackingTransparency.requestTrackingAuthorization();

  if (Firebase.apps.isEmpty) {
    final options = switch (Environment.flavor) {
      Flavor.dev => dev_firebase_options.DefaultFirebaseOptions.currentPlatform,
      Flavor.stg => stg_firebase_options.DefaultFirebaseOptions.currentPlatform,
      Flavor.prod => prod_firebase_options.DefaultFirebaseOptions.currentPlatform,
    };
    await Firebase.initializeApp(
      options: options,
    );
  }

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  PlatformDispatcher.instance.onError = (error, stack) {
    logger.e(
      'Unhandled Platform Error has Occurred.',
      error: error,
      stackTrace: stack,
    );
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  final envFileName = switch (Environment.flavor) {
    Flavor.dev => '.env',
    Flavor.stg => '.env.stg',
    Flavor.prod => '.env.prod',
  };
  await dotenv.load(fileName: envFileName);
  await Supabase.initialize(
    url: dotenv.get('SUPABASE_URL'),
    anonKey: dotenv.get('SUPABASE_ANON_KEY'),
  );

  runApp(const ProviderScope(child: Scenarioshelf()));
}

class Scenarioshelf extends ConsumerWidget {
  const Scenarioshelf({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    ref.read(analyticsRepositoryProvider).logAppOpen();

    return MaterialApp.router(
      title: 'Scenarioshelf',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: AppColor.material.light,
        textTheme: GoogleFonts.ibmPlexSansJpTextTheme(),
        floatingActionButtonTheme: Theme.of(context).floatingActionButtonTheme.copyWith(
              foregroundColor: AppColor.material.light.primary,
              backgroundColor: AppColor.material.light.surface,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(RadiusSize.medium),
                side: BorderSide(
                  color: AppColor.material.light.primary,
                  width: 0.5,
                ),
              ),
            ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: AppColor.material.dark,
        textTheme: GoogleFonts.ibmPlexSansJpTextTheme(),
        floatingActionButtonTheme: Theme.of(context).floatingActionButtonTheme.copyWith(
              foregroundColor: AppColor.material.dark.primary,
              backgroundColor: AppColor.material.dark.surface,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(RadiusSize.medium),
                side: BorderSide(
                  color: AppColor.material.dark.primary,
                  width: 0.5,
                ),
              ),
            ),
      ),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
