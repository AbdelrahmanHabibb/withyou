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
    apiKey: 'AIzaSyBBVhyS6YZjmspQlQUUHvC1h_vFyNfwc_g',
    appId: '1:150749992544:web:59ea70efdcf455f7471505',
    messagingSenderId: '150749992544',
    projectId: 'with-you-2b57e',
    authDomain: 'with-you-2b57e.firebaseapp.com',
    storageBucket: 'with-you-2b57e.appspot.com',
    measurementId: 'G-XSCE43DLL8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBrX4KSSJQtpSwE4Oa1EsC7h_dXDONysuE',
    appId: '1:150749992544:android:5fe62d4780a10dcf471505',
    messagingSenderId: '150749992544',
    projectId: 'with-you-2b57e',
    storageBucket: 'with-you-2b57e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCuYs_x1JaKCh7zB2izfGPnBWJe1kND9yg',
    appId: '1:150749992544:ios:734bb856b7cf776b471505',
    messagingSenderId: '150749992544',
    projectId: 'with-you-2b57e',
    storageBucket: 'with-you-2b57e.appspot.com',
    iosClientId: '150749992544-kl26cuhocs15avqsk7qpsgmsut8s67pg.apps.googleusercontent.com',
    iosBundleId: 'com.example.withMe',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCuYs_x1JaKCh7zB2izfGPnBWJe1kND9yg',
    appId: '1:150749992544:ios:734bb856b7cf776b471505',
    messagingSenderId: '150749992544',
    projectId: 'with-you-2b57e',
    storageBucket: 'with-you-2b57e.appspot.com',
    iosClientId: '150749992544-kl26cuhocs15avqsk7qpsgmsut8s67pg.apps.googleusercontent.com',
    iosBundleId: 'com.example.withMe',
  );
}