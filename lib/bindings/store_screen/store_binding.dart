import 'package:get/get.dart';
import 'package:jiitak/controller/store_screen/store_controller.dart';

class StoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoreController());
  }
}
