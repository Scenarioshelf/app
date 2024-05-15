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
    apiKey: 'AIzaSyD3-T7-gwECyudvctTGqL-ZSJAd9duTg3I',
    appId: '1:700034805800:android:eed0450d58649e1bfa451d',
    messagingSenderId: '700034805800',
    projectId: 'scenarioshelf-dev',
    storageBucket: 'scenarioshelf-dev.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCPuXW4Hf-OiRNqkYA0ygcjljt-iXxS73Y',
    appId: '1:700034805800:ios:c38d92d983ca06f5fa451d',
    messagingSenderId: '700034805800',
    projectId: 'scenarioshelf-dev',
    storageBucket: 'scenarioshelf-dev.appspot.com',
    iosClientId: '700034805800-6sa0qsspi2ue0m4brkv5mc9uc5nvmp9v.apps.googleusercontent.com',
    iosBundleId: 'jp.scenarioshelf.dev',
  );
}
