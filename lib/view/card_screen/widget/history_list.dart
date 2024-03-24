import 'package:flutter/material.dart';
import 'package:jiitak/utils/constants.dart';

import '../../../utils/colors.dart';
import '../../home/widget/custom_text.dart';

class HistoryList extends StatelessWidget {
  const HistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            title: 'スタンプ獲得履歴',
            fontsize: 18,
          ),
          ConstantSize.kHeight20,
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 15,
            separatorBuilder: (context, index) => const Divider(
              color: CustomColors.grey,
            ),
            itemBuilder: (context, index) => Container(
              height: 60,
              color: CustomColors.white,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(
                    title: '2021 / 11 / 18',
                    fontsize: 15,
                    color: CustomColors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        title: 'スタンプを獲得しました。',
                        fontsize: 18,
                        color: CustomColors.black,
                      ),
                      Text(
                        '1 個',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.black,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
