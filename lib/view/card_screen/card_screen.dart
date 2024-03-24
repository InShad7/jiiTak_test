import 'package:flutter/material.dart';
import 'package:jiitak/utils/colors.dart';

import 'widget/app_bar.dart';
import 'widget/history_list.dart';
import 'widget/stamp_row.dart';
import 'widget/top_card.dart';

class CardDetailsScreen extends StatelessWidget {
  const CardDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: const DetailAppBar(
        title: 'スタンプカード詳細',
        titleColor: CustomColors.white,
        bgColor: CustomColors.purple,
        icon: Icons.do_not_disturb_on_outlined,
        iconColor: CustomColors.white,
        backIconBGColor: CustomColors.purple2,
      ),
      body: Column(
        children: [
          const TopCard(),
          SizedBox(
            height: MediaQuery.of(context).size.height - 220,
            child: const SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  StampRow(),
                  HistoryList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
