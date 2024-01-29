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
    apiKey: 'AIzaSyDsyzLIxDyQ9qgiMwiP_0tp0UoaFx7zt7g',
    appId: '1:177428102622:android:ade953881819799514f14f',
    messagingSenderId: '177428102622',
    projectId: 'oninda-89900',
    storageBucket: 'oninda-89900.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAkS9Z2A29t3DuqS2wf8eRo_FkFyf3jtvs',
    appId: '1:177428102622:ios:55f8c80317261d9714f14f',
    messagingSenderId: '177428102622',
    projectId: 'oninda-89900',
    storageBucket: 'oninda-89900.appspot.com',
    androidClientId: '177428102622-p7jh3ok8fameeqk9a038ha996ji48aqm.apps.googleusercontent.com',
    iosClientId: '177428102622-k9h892e6hhkoi6k9vv5v1gjrqtt82che.apps.googleusercontent.com',
    iosBundleId: 'tech.hotash.store.tStore',
  );
}