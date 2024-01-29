import 'package:get/get.dart';
import 'package:t_store/utils/network.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HNetwork());
  }
}
