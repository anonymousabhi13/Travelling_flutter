import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  // final String  text;
  double? width;
  ResponsiveButton({Key? key, this.isResponsive = false, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(132, 85, 101, 118),
          borderRadius: BorderRadius.circular(10),
        ),
        width: width,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.arrow_forward_outlined),
          ],
        ));
  }
}
