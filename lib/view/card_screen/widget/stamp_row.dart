import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../home/widget/custom_text.dart';
import 'stamp_icon.dart';

class StampRow extends StatelessWidget {
  const StampRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      margin: const EdgeInsets.only(left: 15),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: 2,
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 230,
              margin: const EdgeInsets.all(12),
              width: 340,
              decoration: BoxDecoration(
                color: CustomColors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(3, 4),
                  )
                ],
              ),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) => const Center(
                  child: StampIcon(),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: CustomText(
                title: '2 / 2枚目',
                fontsize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
