import 'package:flutter/material.dart';
import 'package:jiitak/utils/colors.dart';
import 'package:jiitak/utils/constants.dart';

import 'fav_icon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});
  @override
  final Size preferredSize = const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CustomColors.white,
      elevation: 0,
      title: Row(children: [
        Expanded(
          child: Container(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: CustomColors.bgColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: const Center(
              child: TextField(
                decoration: InputDecoration(
                  hintText: '北海道, 札幌市',
                  hintStyle: TextStyle(
                    color: CustomColors.black,
                    fontSize: 15,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(11),
                ),
              ),
            ),
          ),
        ),
        const Icon(
          Icons.tune_outlined,
          size: 32,
          color: CustomColors.grey,
        ),
        ConstantSize.kHeight,
        FavIcon()
      ]),
    );
  }
}
