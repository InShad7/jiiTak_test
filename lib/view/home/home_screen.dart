import 'package:flutter/material.dart';
import 'package:jiitak/utils/colors.dart';
import 'package:jiitak/utils/constants.dart';

import 'widget/app_bar.dart';
import 'widget/date_card.dart';
import 'widget/home_card_list.dart';
import 'widget/top_message.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          const TopMessageCard(),
          const DateRow(),
          SizedBox(
            height: MediaQuery.of(context).size.height - 250,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  ConstantSize.kHeight,
                  CardBuilder(),
                  ConstantSize.kHeight,
                ],
              ),
            ),
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: CustomColors.white,
            child: const Icon(
              Icons.location_on_outlined,
              color: CustomColors.black,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
