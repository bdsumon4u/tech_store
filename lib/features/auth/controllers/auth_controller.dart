import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:t_store/data/repositories/auth.dart';
import 'package:t_store/features/auth/screens/login_screen.dart';
import 'package:t_store/utils/constants/image.dart';
import 'package:t_store/utils/loaders/loader.dart';
import 'package:t_store/utils/network.dart';

class AuthController extends GetxController {
  static AuthController get instance => Get.find();

  Future<void> googleSignIn() async {
    try {
      HLoader.openLoadingDialog('Logging you in...', HImage.loginAnimation);

      final isConnected = await HNetwork.instance.isConnected();

      if (!isConnected) {
        HLoader.stopLoading();
        return;
      }

      final credential = await AuthRepository.instance.signInWithGoogle();

      if (kDebugMode) {
        print(credential);
      }

      HLoader.stopLoading();

      AuthRepository.instance.screenRedirect();
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      HLoader.stopLoading();
      HLoader.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }

  Future<void> signOut() async {
    try {
      HLoader.openLoadingDialog('Logging you out...', HImage.loginAnimation);

      final isConnected = await HNetwork.instance.isConnected();

      if (!isConnected) {
        HLoader.stopLoading();
        return;
      }

      await AuthRepository.instance.logout();

      HLoader.stopLoading();

      Get.offAll(() => const LoginScreen());
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      HLoader.stopLoading();
      HLoader.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}
