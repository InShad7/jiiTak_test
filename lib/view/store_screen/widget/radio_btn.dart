import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/utils/colors.dart';
import 'package:jiitak/utils/constants.dart';

import '../../home/widget/custom_text.dart';

class CustomRadioButton extends StatelessWidget {
  CustomRadioButton({super.key, this.smoke = false});
  final smoke;

  final RxInt selectedOption = 0.obs;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildCustomRadioButton(smoke ? '有' : '月', 1),
          _buildCustomRadioButton(smoke ? '無' : '火', 2),
          smoke ? ConstantSize.kHeight : _buildCustomRadioButton('水', 3),
          smoke ? ConstantSize.kHeight : _buildCustomRadioButton('木', 4),
        ],
      ),
    );
  }

  Widget _buildCustomRadioButton(String title, int value) {
    return Obx(
      () => InkWell(
        onTap: () {
          selectedOption.value = value;
        },
        child: Row(
          children: [
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                color:
                    selectedOption == value ? CustomColors.checkOrange : null,
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: selectedOption == value
                      ? CustomColors.checkOrange
                      : CustomColors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: selectedOption == value
                    ? const Icon(
                        Icons.check,
                        color: CustomColors.white,
                        size: 15,
                      )
                    : null,
              ),
            ),
            ConstantSize.kWidth,
            CustomText(
              title: title,
              fontsize: 18,
              color: CustomColors.black,
            ),
          ],
        ),
      ),
    );
  }
}
