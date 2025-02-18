// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCJdM1ipQXpmEhxRJ511c--_mDbOl7CvYo',
    appId: '1:732503603851:web:3e35ac910378057331728e',
    messagingSenderId: '732503603851',
    projectId: 'flutter-sample-283a0',
    authDomain: 'flutter-sample-283a0.firebaseapp.com',
    storageBucket: 'flutter-sample-283a0.firebasestorage.app',
    measurementId: 'G-21D5J81NVS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBcD1mzeZ_vUF86aY1uf6U6ShXm1JcOS60',
    appId: '1:732503603851:android:c0c0cdefe7d738c831728e',
    messagingSenderId: '732503603851',
    projectId: 'flutter-sample-283a0',
    storageBucket: 'flutter-sample-283a0.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBfC-4RIa9ll_Hvtdf5i9iEi6x3EIWsUHc',
    appId: '1:732503603851:ios:96c07f2f4ae1f28d31728e',
    messagingSenderId: '732503603851',
    projectId: 'flutter-sample-283a0',
    storageBucket: 'flutter-sample-283a0.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBfC-4RIa9ll_Hvtdf5i9iEi6x3EIWsUHc',
    appId: '1:732503603851:ios:96c07f2f4ae1f28d31728e',
    messagingSenderId: '732503603851',
    projectId: 'flutter-sample-283a0',
    storageBucket: 'flutter-sample-283a0.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCJdM1ipQXpmEhxRJ511c--_mDbOl7CvYo',
    appId: '1:732503603851:web:85cb44b3dd5f4b0e31728e',
    messagingSenderId: '732503603851',
    projectId: 'flutter-sample-283a0',
    authDomain: 'flutter-sample-283a0.firebaseapp.com',
    storageBucket: 'flutter-sample-283a0.firebasestorage.app',
    measurementId: 'G-WV8XRYJ45N',
  );
}
