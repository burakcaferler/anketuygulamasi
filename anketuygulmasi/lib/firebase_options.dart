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
    apiKey: 'AIzaSyALgixnFJRc3VBUjub55Lx0schNDosodEo',
    appId: '1:77349903479:web:31f03471d8920e4a633a72',
    messagingSenderId: '77349903479',
    projectId: 'anketuygulamasi-b0b18',
    authDomain: 'anketuygulamasi-b0b18.firebaseapp.com',
    storageBucket: 'anketuygulamasi-b0b18.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDMsSJu9hhVgr-ZoDAyT-6qG2aVmsdUo2Y',
    appId: '1:77349903479:android:12795ea3d496ce96633a72',
    messagingSenderId: '77349903479',
    projectId: 'anketuygulamasi-b0b18',
    storageBucket: 'anketuygulamasi-b0b18.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDMXAXAuSmS74_OokhQhnjc-7BkBSFPZjE',
    appId: '1:77349903479:ios:e4bb002d3cac2219633a72',
    messagingSenderId: '77349903479',
    projectId: 'anketuygulamasi-b0b18',
    storageBucket: 'anketuygulamasi-b0b18.appspot.com',
    iosClientId: '77349903479-uhelq7uosukm4a64hs4qtpnr6qagfmro.apps.googleusercontent.com',
    iosBundleId: 'com.example.anketuygulmasi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDMXAXAuSmS74_OokhQhnjc-7BkBSFPZjE',
    appId: '1:77349903479:ios:0a5211a35a043c39633a72',
    messagingSenderId: '77349903479',
    projectId: 'anketuygulamasi-b0b18',
    storageBucket: 'anketuygulamasi-b0b18.appspot.com',
    iosClientId: '77349903479-5akogpf73a3u23rcq23qdkunadt71vo0.apps.googleusercontent.com',
    iosBundleId: 'com.example.anketuygulmasi.RunnerTests',
  );
}
