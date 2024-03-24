import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/controller/store_screen/store_controller.dart';
import 'package:jiitak/utils/colors.dart';

class CustomTextField extends GetResponsiveView {
  CustomTextField({
    super.key,
    required this.title,
    required this.hint,
    required this.storeController,
  });

  final String title;
  final String hint;
  final StoreController storeController;
  @override
  Widget builder() {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
      height: 90,
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
                    fontSize: storeController.toggleFontSize(screen),
                  ),
                ),
                const TextSpan(
                  text: '*',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          CustomField(hint: hint),
        ],
      ),
    );
  }
}

class CustomField extends StatelessWidget {
  const CustomField({super.key, required this.hint, this.amount = false});

  final String hint;
  final amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: amount ? 150 : double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: CustomColors.grey,
          width: 1,
        ),
      ),
      child: TextFormField(
        // controller: controller,
        style: const TextStyle(color: CustomColors.black, fontSize: 18),
        cursorColor: CustomColors.black,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: CustomColors.grey),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
