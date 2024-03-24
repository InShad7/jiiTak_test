import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../home/widget/custom_text.dart';

class TopCard extends StatelessWidget {
  const TopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: CustomColors.purple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    title: 'Mer キッチン',
                    fontsize: 20,
                    color: CustomColors.white,
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 20,
                        color: CustomColors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '現在の獲得数 ',
                        ),
                        TextSpan(
                          text: ' 30',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '個',
                        ),
                      ],
                    ),
                  )
                ]),
          ),
          Container(
            height: 20,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: CustomColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22),
                topRight: Radius.circular(22),
              ),
            ),
          )
        ],
      ),
    );
  }
}
