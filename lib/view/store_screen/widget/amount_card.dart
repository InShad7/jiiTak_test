import 'package:flutter/material.dart';
import 'package:jiitak/utils/colors.dart';

import '../../home/widget/custom_text.dart';
import 'custom_text_field.dart';

class AmountCard extends StatelessWidget {
  const AmountCard({super.key, this.title});
  final title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      height: 100,
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
                  style: const TextStyle(
                    color: CustomColors.black,
                    fontSize: 18,
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
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomField(hint: '¥ 1,000', amount: true),
              CustomText(title: '~', fontsize: 18),
              CustomField(hint: '¥ 2,000', amount: true)
            ],
          ),
        ],
      ),
    );
  }
}
