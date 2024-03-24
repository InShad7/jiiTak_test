import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/controller/store_screen/store_controller.dart';

import '../../../utils/colors.dart';
import 'radio_btn.dart';

class HolidayBtn extends GetResponsiveView {
  HolidayBtn({super.key, required this.title, this.smoke = false});
  final String title;
  final bool smoke;

  @override
  Widget builder() {
    return GetBuilder<StoreController>(
      builder: (controller) => Container(
        padding: const EdgeInsets.only(left: 16),
        height: smoke ? 100 : 150,
        width: double.infinity,
        color: CustomColors.white,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
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
              CustomRadioButton(smoke: smoke),
              smoke ? const SizedBox() : CustomRadioButton(),
            ]),
      ),
    );
  }
}
