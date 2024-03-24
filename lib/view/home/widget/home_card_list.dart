import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/home/home_controller.dart';
import 'home_card.dart';

class CardBuilder extends GetResponsiveView<HomeController> {
  CardBuilder({super.key});

  @override
  Widget builder() {
    if (screen.isTablet) {
      return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 450,
        ),
        itemCount: controller.img.length,
        itemBuilder: (context, index) => HomeCard(
          controller: controller,
          index: index,
        ),
      );
    } else if (screen.isDesktop) {
      return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisExtent: 450,
        ),
        itemCount: controller.img.length,
        itemBuilder: (context, index) => HomeCard(
          controller: controller,
          index: index,
        ),
      );
    } else {
      //  default screen.isPhone
      return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: controller.img.length,
        itemBuilder: (context, index) => HomeCard(
          controller: controller,
          index: index,
        ),
      );
    }
  }
}
