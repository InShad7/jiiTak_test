import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/controller/store_screen/store_controller.dart';
import 'package:jiitak/utils/constants.dart';

import '../../../utils/colors.dart';
import 'drop_down.dart';

class SelectTimeOption extends GetResponsiveView {
  SelectTimeOption({
    super.key,
    required this.title,
    this.category = false,
    required this.dropItemList,
    required this.dropItemTitle,
    required this.dropItemList2,
  });
  final bool category;
  final List<String> dropItemList;
  final List<String> dropItemList2;
  final String dropItemTitle;

  final String title;
  @override
  Widget builder() {
    return GetBuilder<StoreController>(
      builder: (controller) => Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        color: CustomColors.white,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: title,
                      style: TextStyle(
                        color: CustomColors.black,
                        fontSize: controller.toggleFontSize(screen),
                      ),
                    ),
                    TextSpan(
                      text: '*',
                      style: TextStyle(
                        color: CustomColors.red,
                        fontSize: controller.toggleFontSize(screen),
                      ),
                    ),
                  ],
                ),
              ),
              ConstantSize.kHeight,
              DropdownRow(
                title: dropItemTitle,
                category: category,
                items: dropItemList,
                items2: dropItemList2,
              ),
              ConstantSize.kHeight,
            ]),
      ),
    );
  }
}
