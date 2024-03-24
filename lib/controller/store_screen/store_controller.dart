import 'package:get/get.dart';

class StoreController extends GetxController {
//list of images in the store screen
  List officeImg = [
    'assets/images/office.png',
    'assets/images/store.png',
    'assets/images/office.png',
  ];
  List storeImg = [
    'assets/images/store.png',
    'assets/images/store.png',
  ];

//list of dropdown value to select category
  List<String> categoryList = [
    '料理カテゴリー選択',
    '料理カテゴリー',
    '料理カテゴ選択',
  ];

//list of dropdown value to select time slot
  List<String> timeList = [
    '11 : 00',
    '12 : 00',
    '01 : 00',
  ];

  List<String> timeSlot2 = [
    '21 : 00',
    '22 : 00',
    '23 : 00',
  ];

//toggle the image height according to- is isPhone or isTablet or isDesktop
  toggleImgHeight(screen) {
    if (screen.isPhone) {
      return 110.toDouble();
    } else if (screen.isTablet) {
      return 200.toDouble();
    } else {
      return 300.toDouble();
    }
  }

//toggle the image width   according to- is isPhone or isTablet or isDesktop
  toggleImgWidth(screen) {
    if (screen.isPhone) {
      return 100.toDouble();
    } else if (screen.isTablet) {
      return 200.toDouble();
    } else {
      return 300.toDouble();
    }
  }

//toggle the font size  according to- is isPhone or isTablet or isDesktop
  toggleFontSize(screen) {
    if (screen.isPhone) {
      return 15.toDouble();
    } else if (screen.isTablet) {
      return 22.toDouble();
    } else {
      return 26.toDouble();
    }
  }
}
