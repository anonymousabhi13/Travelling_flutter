// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  final Color color;
  String? text;
  final Color backgroundColor;
  double size;
  IconData? icon;
  bool isIcon;
  final Color bordercolor;
  AppButton(
      {Key? key,
      required this.color,
      this.isIcon = false,
      this.text,
      this.icon,
      required this.backgroundColor,
      required this.size,
      required this.bordercolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 3),
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(color: bordercolor, width: 1.0),
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: isIcon == false
          ? Icon(
              icon,
              color: color,
            )
          : AppText(
              text: text!,
              color: Colors.red,
            ),
      alignment: Alignment.center,
    );
    ;
  }
}
