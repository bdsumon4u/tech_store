import 'package:get/get.dart';

class SliderController extends GetxController {
  static SliderController get instance => Get.find();

  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;
}
