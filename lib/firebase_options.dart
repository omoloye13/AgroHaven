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
    apiKey: 'AIzaSyDxcaKgVSLA4bdsNTmGGlZwlz0QrW3VRbw',
    appId: '1:831822466697:web:662cde03f6f852e7e2c058',
    messagingSenderId: '831822466697',
    projectId: 'agro-haven',
    authDomain: 'agro-haven.firebaseapp.com',
    storageBucket: 'agro-haven.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBmIsNJ5lV9TGWKoIYUrAJakY8AADLR_PI',
    appId: '1:831822466697:android:c6cfed010fbdcfb2e2c058',
    messagingSenderId: '831822466697',
    projectId: 'agro-haven',
    storageBucket: 'agro-haven.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCZ_uDyGoavWLchCGuGexq36nXZxbTgxic',
    appId: '1:831822466697:ios:d251772d030b2a3fe2c058',
    messagingSenderId: '831822466697',
    projectId: 'agro-haven',
    storageBucket: 'agro-haven.appspot.com',
    iosBundleId: 'com.example.agrohaven',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCZ_uDyGoavWLchCGuGexq36nXZxbTgxic',
    appId: '1:831822466697:ios:d251772d030b2a3fe2c058',
    messagingSenderId: '831822466697',
    projectId: 'agro-haven',
    storageBucket: 'agro-haven.appspot.com',
    iosBundleId: 'com.example.agrohaven',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDxcaKgVSLA4bdsNTmGGlZwlz0QrW3VRbw',
    appId: '1:831822466697:web:7922222fe86586e2e2c058',
    messagingSenderId: '831822466697',
    projectId: 'agro-haven',
    authDomain: 'agro-haven.firebaseapp.com',
    storageBucket: 'agro-haven.appspot.com',
  );
}
