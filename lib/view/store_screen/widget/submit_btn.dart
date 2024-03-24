import 'package:flutter/material.dart';


import '../../../utils/colors.dart';
import '../../home/widget/custom_text.dart';

class SubmitBtn extends StatelessWidget {
  const SubmitBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(15),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          gradient: const LinearGradient(
            colors: CustomColors.btnColor,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: const Center(
          child: CustomText(
            title: '編集を保存',
            fontsize: 20,
            color: CustomColors.white,
          ),
        ),
      ),
    );
  }
}
