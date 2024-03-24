import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/view/card_screen/card_screen.dart';
import 'package:jiitak/view/store_screen/store_screen.dart';

import '../../view/home/home_screen.dart';

class BottomNavBarController extends GetxController {
//current index of the bottom navigation bar
  int currentIndex = 0;

//list of screen to navigate from bottom navigation bar
  final List<Widget> screens = [
    const HomeScreen(),
    const CardDetailsScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const StoreScreen(),
  ];

//change the bottom navigation bar screen
  toggleBottomNavBar(index) {
    currentIndex = index;
    update();
  }
}
