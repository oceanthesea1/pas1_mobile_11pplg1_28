import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg1_28/controllers/bottom_nav_controller.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavController());
  }
}