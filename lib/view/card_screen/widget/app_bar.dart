import 'package:flutter/material.dart';
import 'package:jiitak/utils/colors.dart';

import '../../home/widget/custom_text.dart';

class DetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DetailAppBar({
    super.key,
    this.store = false,
    required this.title,
    required this.bgColor,
    required this.titleColor,
    required this.iconColor,
    required this.icon, required this.backIconBGColor,
  });
  final bool store;
  final String title;
  final Color bgColor;
  final Color titleColor;
  final Color iconColor;
  final IconData icon;
  final Color backIconBGColor;

  @override
  final Size preferredSize = const Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: bgColor,
      // store ? CustomColors.white : CustomColors.purple,
      centerTitle: true,
      title: CustomText(
        title: title,
        //  store ? '店舗プロフィール編集' : 'スタンプカード詳細',
        fontsize: 18,
        color: titleColor,
        //  store ? CustomColors.black : CustomColors.white,
      ),
      leading: Padding(
        padding: const EdgeInsets.all(11),
        child: CircleAvatar(
          backgroundColor: backIconBGColor,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: iconColor,
              //  store ? CustomColors.grey : CustomColors.white,
            ),
          ),
        ),
      ),
      actions: [
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                // store
                //     ? Icons.notifications_outlined
                //     : Icons.do_not_disturb_on_outlined,
                color: store ? CustomColors.black : CustomColors.white,
                size: 30,
              ),
            ),
            store
                ? Positioned(
                    top: 3,
                    right: 4,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: CustomText(
                          title: '99+',
                          fontsize: 12,
                          color: CustomColors.white,
                        ),
                      ),
                    ),
                  )
                : const SizedBox()
          ],
        )
      ],
    );
  }
}
