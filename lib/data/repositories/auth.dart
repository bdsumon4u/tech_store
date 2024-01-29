import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:t_store/features/auth/screens/login_screen.dart';
import 'package:t_store/features/auth/screens/onboarding_screen.dart';
import 'package:t_store/features/tabbar.dart';

class AuthRepository extends GetxController {
  static AuthRepository get instance => Get.find();

  final storage = GetStorage();
  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    final user = _auth.currentUser;

    if (user == null) {
      storage.writeIfNull('isFirstTime', true);
      storage.read('isFirstTime') == true
          ? Get.offAll(() => const OnBoardingScreen())
          : Get.offAll(() => const LoginScreen());
    } else if (user.emailVerified) {
      Get.offAll(() => const HTabBar());
    } else {
      Get.offAll(() => const HTabBar());
    }
  }

  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      return _auth.signInWithCredential(credential);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }

  Future<void> logout() async {
    try {
      await GoogleSignIn().signOut();
      await _auth.signOut();
    } catch (e) {
      rethrow;
    }
  }
}
