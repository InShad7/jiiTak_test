import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/controller/bottom_nav_bar/bottom_nav_bar_controller.dart';
import 'package:jiitak/utils/colors.dart';

class BottomNavBar extends GetView<BottomNavBarController> {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: GetBuilder<BottomNavBarController>(
        builder: (controller) => IndexedStack(
          index: controller.currentIndex.toInt(),
          children: controller.screens,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColors.orange,
        onPressed: () {
          controller.toggleBottomNavBar(2);
        },
        child: Container(
          height: 65,
          width: 65,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: CustomColors.orangeGradient,
          ),
          child: const Icon(
            Icons.qr_code,
            size: 32,
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: GetBuilder<BottomNavBarController>(
        builder: (controller) => BottomNavigationBar(
          unselectedItemColor: CustomColors.black,
          selectedItemColor: CustomColors.orange,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: controller.currentIndex.toInt(),
          onTap: (index) {
            if (index == 2) {
              return;
            } else {
              controller.toggleBottomNavBar(index);
            }
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded),
              label: 'さがす',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business_center_outlined),
              label: 'お仕事',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc),
              label: '打刻する',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline),
              label: 'チャット',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'マイページ',
            ),
          ],
        ),
      ),
    );
  }
}
