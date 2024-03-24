
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class StampIcon extends StatelessWidget {
  const StampIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) => SizedBox(
          width: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return CustomColors.linearGradient;
                },
                child: const Icon(
                  Icons.verified_rounded,
                  size: 48,
                  color: CustomColors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
