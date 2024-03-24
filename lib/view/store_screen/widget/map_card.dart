import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MapCard extends GetResponsiveView {
  MapCard({super.key, required this.img});
  final String img;

  @override
  Widget builder() {
    return Container(
      margin: const EdgeInsets.all(15),
      height: screen.isPhone
          ? 300
          : screen.isTablet
              ? 450
              : 550,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        image: DecorationImage(
          image: AssetImage(
            img,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
