import 'package:get/get.dart';
import 'package:jiitak/controller/home/home_controller.dart';
import 'package:jiitak/controller/store_screen/store_controller.dart';

import '../../controller/bottom_nav_bar/bottom_nav_bar_controller.dart';

class BottomNavBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavBarController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => StoreController());
  }
}
