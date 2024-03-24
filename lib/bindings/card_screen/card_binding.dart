import 'package:get/get.dart';
import 'package:jiitak/controller/card_screen/card_screen_controller.dart';

class CardScreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() =>  CardScreenController());
  }
}
