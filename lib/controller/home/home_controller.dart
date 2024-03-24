import 'package:get/get.dart';

class HomeController extends GetxController {
  int selectedIndex = 0;

//list of images in the home screen
  List img = [
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
  ];

  //list of day in japanese format
  final List<String> japaneseDayNames = [
    '日',
    '月',
    '火',
    '水',
    '木',
    '金',
    '土',
    '日',
    '月',
    '火',
    '水',
    '木',
    '金',
    '土',
  ];

//toggle the date when tapped in home
  toggleDate(index) {
    selectedIndex = index;
    update();
  }
}
