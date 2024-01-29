import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/app.dart';
import 'package:t_store/data/repositories/auth.dart';
import 'package:t_store/firebase_options.dart';

Future<void> main() async {
  /// Todo: Add widgets binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  /// Todo: Init local storage
  await GetStorage.init();

  /// Todo: Await native splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// Todo: Init firebase & auth repo
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthRepository()));

  runApp(const App());
}
