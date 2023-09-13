// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBVsnq-vIUhbYHDLcJAFn-wRzxghVn12kI',
    appId: '1:87808788716:web:63fcf96521865e70ef7dc9',
    messagingSenderId: '87808788716',
    projectId: 'careerwis',
    authDomain: 'careerwis.firebaseapp.com',
    storageBucket: 'careerwis.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBH_ftxwGeE-GzhK08rUZdgPPwrQ7QQSyI',
    appId: '1:87808788716:android:084e7a668872e608ef7dc9',
    messagingSenderId: '87808788716',
    projectId: 'careerwis',
    storageBucket: 'careerwis.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCJAiv6i6BcNZ6J66c5Q08e_XSkp8JcULg',
    appId: '1:87808788716:ios:59b156be737e18f9ef7dc9',
    messagingSenderId: '87808788716',
    projectId: 'careerwis',
    storageBucket: 'careerwis.appspot.com',
    iosBundleId: 'com.example.hackheads',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCJAiv6i6BcNZ6J66c5Q08e_XSkp8JcULg',
    appId: '1:87808788716:ios:c07c74426a58834aef7dc9',
    messagingSenderId: '87808788716',
    projectId: 'careerwis',
    storageBucket: 'careerwis.appspot.com',
    iosBundleId: 'com.example.hackheads.RunnerTests',
  );
}