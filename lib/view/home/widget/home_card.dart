import 'package:flutter/material.dart';
import 'package:jiitak/controller/home/home_controller.dart';
import 'package:jiitak/utils/colors.dart';
import 'package:jiitak/utils/constants.dart';

import 'custom_text.dart';
import 'fav_icon.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.controller,
    required this.index,
  });

  final int index;
  final HomeController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      // height: 400.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: CustomColors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(3, 4),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                height: 200.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      controller.img[index],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 15,
                child: Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    color: CustomColors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                    child: CustomText(
                      title: '本日まで',
                      fontsize: 13,
                      color: CustomColors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          ConstantSize.kHeight,
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(
                  title: '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パバ)',
                  fontsize: 15,
                ),
                ConstantSize.kHeight,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        color: CustomColors.orangeShade,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Center(
                        child: CustomText(
                          title: '介護付き有料老人',
                          fontsize: 14,
                          color: CustomColors.yellow,
                        ),
                      ),
                    ),
                    const CustomText(
                      title: '¥ 6,000',
                      fontsize: 20,
                    )
                  ],
                ),
                const CustomText(
                  title: '5月 31日（水）08 : 00 ~ 17 : 00',
                  fontsize: 15,
                ),
                const CustomText(
                  title: '北海道札幌市東雲町3丁目916番地17号',
                  fontsize: 15,
                ),
                const CustomText(
                  title: '交通費 300円',
                  fontsize: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomText(
                      title: '住宅型有料老人ホームひまわり倶楽部',
                      color: CustomColors.grey,
                      fontsize: 18,
                    ),
                    FavIcon()
                  ],
                ),
              ],
            ),
          ),
          ConstantSize.kHeight,
        ],
      ),
    );
  }
}
