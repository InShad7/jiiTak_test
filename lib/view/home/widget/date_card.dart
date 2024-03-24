import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/controller/home/home_controller.dart';
import 'package:jiitak/utils/colors.dart';

class DateRow extends StatelessWidget {
  const DateRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Container(
        margin: const EdgeInsets.only(left: 10),
        height: 80,
        color: CustomColors.white,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: controller.japaneseDayNames.length,
          itemBuilder: (context, index) {
            return DateCard(
              index: index,
              isSelected: index == controller.selectedIndex,
              day: controller.japaneseDayNames[index],
              date: " ${index + 1}",
              onTap: () {
                controller.toggleDate(index);
              },
            );
          },
        ),
      ),
    );
  }
}

class DateCard extends StatelessWidget {
  const DateCard({
    Key? key,
    required this.index,
    required this.isSelected,
    required this.onTap,
    required this.day,
    required this.date,
  }) : super(key: key);

  final int index;
  final bool isSelected;
  final VoidCallback onTap;
  final String day;
  final String date;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 4, bottom: 4, top: 4),
        height: 85,
        width: 55,
        decoration: BoxDecoration(
          color: isSelected ? CustomColors.yellow : CustomColors.white,
          borderRadius: BorderRadius.circular(9),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              day,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: isSelected ? CustomColors.white : CustomColors.black,
              ),
            ),
            Text(
              date,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: isSelected ? CustomColors.white : CustomColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
