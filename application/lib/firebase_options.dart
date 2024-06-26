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
    apiKey: 'AIzaSyCY5uEgsr4Y-b-rZh1Ak4Rc8P0Pz8WK2vU',
    appId: '1:582564212938:web:f004e590f3dfb9fbb30433',
    messagingSenderId: '582564212938',
    projectId: 'pet-flutter-app-29972',
    authDomain: 'pet-flutter-app-29972.firebaseapp.com',
    storageBucket: 'pet-flutter-app-29972.appspot.com',
    measurementId: 'G-BLVNV1QK57',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCCKK3PKHM-OKj_aeWHUtrLCco801jL74o',
    appId: '1:582564212938:android:6845057fe2ce8a03b30433',
    messagingSenderId: '582564212938',
    projectId: 'pet-flutter-app-29972',
    storageBucket: 'pet-flutter-app-29972.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDMx6h6j--oqsGDBzzMg4e1ah66kQ_tcec',
    appId: '1:582564212938:ios:f28caacb673ac220b30433',
    messagingSenderId: '582564212938',
    projectId: 'pet-flutter-app-29972',
    storageBucket: 'pet-flutter-app-29972.appspot.com',
    iosBundleId: 'com.example.application',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDMx6h6j--oqsGDBzzMg4e1ah66kQ_tcec',
    appId: '1:582564212938:ios:f28caacb673ac220b30433',
    messagingSenderId: '582564212938',
    projectId: 'pet-flutter-app-29972',
    storageBucket: 'pet-flutter-app-29972.appspot.com',
    iosBundleId: 'com.example.application',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCY5uEgsr4Y-b-rZh1Ak4Rc8P0Pz8WK2vU',
    appId: '1:582564212938:web:56ebb9d6dd3558c5b30433',
    messagingSenderId: '582564212938',
    projectId: 'pet-flutter-app-29972',
    authDomain: 'pet-flutter-app-29972.firebaseapp.com',
    storageBucket: 'pet-flutter-app-29972.appspot.com',
    measurementId: 'G-WY18G46F4B',
  );
}
