// File generated by FlutterFire CLI.
// ignore_for_file: type=lint

import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDR89KbWPJ2Mdk2rk1pW7jZLLjZiMG_x3g',
    appId: '1:580165016681:android:2754e18bb031d5223556f8',
    messagingSenderId: '580165016681',
    projectId: 'scenarioshelf-stg',
    storageBucket: 'scenarioshelf-stg.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA9gf6NJnE8FTwOWIQ-rlZ-bCMCf1kUnDI',
    appId: '1:580165016681:ios:4fb857f7c07671413556f8',
    messagingSenderId: '580165016681',
    projectId: 'scenarioshelf-stg',
    storageBucket: 'scenarioshelf-stg.appspot.com',
    iosClientId: '580165016681-rdbne9b6pcjne9p4m1r663gjrsso54i4.apps.googleusercontent.com',
    iosBundleId: 'jp.scenarioshelf.stg',
  );
}
