import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../home/widget/custom_text.dart';

class DropdownRow extends StatefulWidget {
  const DropdownRow(
      {super.key,
      this.category = false,
      required this.items,
      required this.title,
      required this.items2});
  final bool category;
  final List<String> items;
  final List<String> items2;
  final String title;

  @override
  _DropdownRowState createState() => _DropdownRowState();
}

class _DropdownRowState extends State<DropdownRow> {
  String? selectedItem1;
  String? selectedItem2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 45,
          width: widget.category ? 250 : 150,
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: CustomColors.grey,
              width: 1.0,
            ),
          ),
          child: DropdownButton<String>(
            value: selectedItem1,
            onChanged: (newValue) {
              setState(() {
                selectedItem1 = newValue;
              });
            },
            items: widget.items.map((item) {
              return DropdownMenuItem(
                value: item,
                child: Text(item),
              );
            }).toList(),
            hint: CustomText(
              title: widget.title,
              fontsize: 20,
              color: CustomColors.black,
            ),
            underline: Container(),
            icon:
                const Icon(Icons.keyboard_arrow_down, color: CustomColors.grey),
          ),
        ),
        widget.category
            ? const SizedBox()
            : const CustomText(
                title: '~',
                fontsize: 20,
                color: CustomColors.black,
              ),
        widget.category
            ? const SizedBox()
            : Container(
                height: 45,
                width: 150,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: CustomColors.grey,
                    width: 1.0,
                  ),
                ),
                child: DropdownButton<String>(
                  value: selectedItem2,
                  onChanged: (newValue) {
                    setState(() {
                      selectedItem2 = newValue;
                    });
                  },
                  items: widget.items2.map((item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  hint: const CustomText(
                    title: '20 : 00',
                    fontsize: 20,
                    color: CustomColors.black,
                  ),
                  underline: Container(),
                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: CustomColors.grey,
                  ),
                ),
              ),
      ],
    );
  }
}
