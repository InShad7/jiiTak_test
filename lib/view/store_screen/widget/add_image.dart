import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/controller/store_screen/store_controller.dart';
import 'package:jiitak/utils/colors.dart';
import 'package:jiitak/utils/constants.dart';

import '../../home/widget/custom_text.dart';

class AddImgSection extends GetResponsiveView {
  AddImgSection({
    super.key,
    required this.title,
    required this.subtitle,
    this.added = false,
    this.option = false,
    this.img,
  });
  final String title;
  final String subtitle;
  final bool added;
  final bool option;
  final img;

  @override
  Widget builder() {
    return GetBuilder<StoreController>(
      builder: (controller) => Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                maxLines: 1,
                text: TextSpan(children: [
                  TextSpan(
                    text: title,
                    style: TextStyle(
                      color: CustomColors.black,
                      fontSize: controller.toggleFontSize(screen),
                    ),
                  ),
                  TextSpan(
                    text: option ? '' : '*',
                    style: TextStyle(
                      color: CustomColors.red,
                      fontSize: controller.toggleFontSize(screen),
                    ),
                  ),
                  TextSpan(
                    text: subtitle,
                    style: TextStyle(
                      color: CustomColors.grey,
                      fontSize: controller.toggleFontSize(screen),
                    ),
                  ),
                ]),
              ),
              Container(
                height: controller.toggleImgHeight(screen),
                width: double.infinity,
                color: CustomColors.white,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: img.length,
                        itemBuilder: (context, index) => Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(8),
                              height: controller.toggleImgHeight(screen),
                              width: controller.toggleImgWidth(screen),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: AssetImage(
                                    img[index],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 8,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.close,
                                  color: CustomColors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      added
                          ? const SizedBox()
                          : Container(
                              margin: const EdgeInsets.all(8),
                              height: controller.toggleImgHeight(screen),
                              width: controller.toggleImgWidth(screen),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: CustomColors.grey,
                                  width: 1.0,
                                  style: BorderStyle.solid,
                                ),
                                color: CustomColors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ConstantSize.kHeight,
                                  IconButton(
                                    padding: const EdgeInsets.all(0),
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.image_outlined,
                                      color: CustomColors.grey,
                                      size: screen.isPhone
                                          ? 45
                                          : screen.isTablet
                                              ? 60
                                              : 70,
                                    ),
                                  ),
                                  CustomText(
                                    title: "写真を追加",
                                    fontsize: controller.toggleFontSize(screen),
                                    color: CustomColors.grey,
                                  ),
                                ],
                              ),
                            ),
                    ],
                  ),
                ),
              ),
              ConstantSize.kHeight,
            ]),
      ),
    );
  }
}
