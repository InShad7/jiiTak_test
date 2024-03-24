import 'package:flutter/material.dart';
import 'package:jiitak/utils/colors.dart';

import '../../../utils/constants.dart';

class TopMessageCard extends StatelessWidget {
  const TopMessageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: CustomColors.orangeGradient,
          ),
          child: const Center(
            child: Text(
              '2022年 5月 26日（木） ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        ConstantSize.kHeight20,
      ],
    );
  }
}
