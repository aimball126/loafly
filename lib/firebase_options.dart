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
    apiKey: 'AIzaSyCFsikNTnXlyRNZ9DQk3Di-Q4c3y_wQEUg',
    appId: '1:247513053402:web:2be9f4225cb84d385d4de3',
    messagingSenderId: '247513053402',
    projectId: 'ultra-unfolding-412521',
    authDomain: 'ultra-unfolding-412521.firebaseapp.com',
    storageBucket: 'ultra-unfolding-412521.appspot.com',
    measurementId: 'G-H11EJ7ZGF6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAk6BXV0hw7Y2lnYIe48ptAFO61A80scMA',
    appId: '1:247513053402:android:74fe33f2bcb7f1355d4de3',
    messagingSenderId: '247513053402',
    projectId: 'ultra-unfolding-412521',
    storageBucket: 'ultra-unfolding-412521.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDQaTvmMZAztsyjfizndCQ9diIjHtYLlx8',
    appId: '1:247513053402:ios:63bd79fe8b5bb3ac5d4de3',
    messagingSenderId: '247513053402',
    projectId: 'ultra-unfolding-412521',
    storageBucket: 'ultra-unfolding-412521.appspot.com',
    iosBundleId: 'com.example.loafly',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDQaTvmMZAztsyjfizndCQ9diIjHtYLlx8',
    appId: '1:247513053402:ios:09efe5160a84f3ea5d4de3',
    messagingSenderId: '247513053402',
    projectId: 'ultra-unfolding-412521',
    storageBucket: 'ultra-unfolding-412521.appspot.com',
    iosBundleId: 'com.example.loafly.RunnerTests',
  );
}
