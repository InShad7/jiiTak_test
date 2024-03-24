import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/utils/colors.dart';

class FavIcon extends StatelessWidget {
  FavIcon({Key? key, this.app = false}) : super(key: key);

  final app;
  final RxBool fav = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        child: Icon(
          fav.value ? Icons.favorite : Icons.favorite_border,
          color: (app || fav.value) ? CustomColors.red : CustomColors.red,
          size: 33,
        ),
        onTap: () {
          fav.toggle();
        },
      ),
    );
  }
}
