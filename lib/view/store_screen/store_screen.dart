import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/controller/store_screen/store_controller.dart';
import 'package:jiitak/utils/colors.dart';
import 'package:jiitak/utils/constants.dart';

import '../card_screen/widget/app_bar.dart';
import 'widget/add_image.dart';
import 'widget/amount_card.dart';
import 'widget/custom_text_field.dart';
import 'widget/holiday_btn.dart';
import 'widget/map_card.dart';
import 'widget/submit_btn.dart';
import 'widget/time_slot.dart';

class StoreScreen extends GetView<StoreController> {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: const DetailAppBar(
        store: true,
        bgColor: CustomColors.white,
        title: '店舗プロフィール編集',
        titleColor: CustomColors.black,
        icon: Icons.notifications_outlined,
        iconColor: CustomColors.grey,
        backIconBGColor: CustomColors.lightGrey,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(children: [
          CustomTextField(
            title: '店舗名',
            hint: 'Mer キッチン',
            storeController: controller,
          ),
          CustomTextField(
            title: '代表担当者名',
            hint: '林田　絵梨花',
            storeController: controller,
          ),
          CustomTextField(
            title: '店舗電話番号',
            hint: '123 - 4567 8910',
            storeController: controller,
          ),
          CustomTextField(
            title: '店舗住所',
            hint: '大分県豊後高田市払田791-13',
            storeController: controller,
          ),
          MapCard(img: 'assets/images/map.png'),
          AddImgSection(
            title: '店舗外観',
            subtitle: '（最大3枚まで）',
            img: controller.storeImg,
          ),
          AddImgSection(
            title: '店舗内観',
            subtitle: '（1枚〜3枚ずつ追加してください）',
            added: true,
            img: controller.officeImg,
          ),
          AddImgSection(
            title: '料理写真',
            subtitle: '（1枚〜3枚ずつ追加してください）',
            added: true,
            img: controller.officeImg,
          ),
          AddImgSection(
            title: 'メニュー写真',
            subtitle: '（1枚〜3枚ずつ追加してください）',
            added: true,
            img: controller.officeImg,
          ),
          SelectTimeOption(
            title: '営業時間',
            dropItemTitle: '11 : 00',
            dropItemList: controller.timeList,
            dropItemList2: controller.timeSlot2,
          ),
          SelectTimeOption(
            title: 'ランチ時間',
            dropItemTitle: '11 : 00',
            dropItemList: controller.timeList,
            dropItemList2: controller.timeSlot2,
          ),
           HolidayBtn(title: '定休日'),
          ConstantSize.kHeight,
          SelectTimeOption(
            title: '料理カテゴリー',
            dropItemTitle: '料理カテゴリー選択',
            category: true,
            dropItemList: controller.categoryList,
            dropItemList2: const [],
          ),
          const AmountCard(title: '予算*'),
          CustomTextField(
            title: 'キャッチコピー',
            hint: '美味しい！リーズナブルなオムライスランチ！',
            storeController: controller,
          ),
          CustomTextField(
            title: '座席数',
            hint: '40席',
            storeController: controller,
          ),
           HolidayBtn(title: '喫煙席', smoke: true),
           HolidayBtn(title: '駐車場', smoke: true),
           HolidayBtn(title: '来店プレゼント', smoke: true),
          AddImgSection(
            title: '',
            subtitle: '',
            added: true,
            option: true,
            img: controller.officeImg,
          ),
          CustomTextField(
            title: '来店プレゼント名',
            hint: 'いちごクリームアイスクリーム, ジュース',
            storeController: controller,
          ),
          const SubmitBtn(),
          ConstantSize.kHeight50
        ]),
      ),
    );
  }
}
