import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  const AppText({
    Key? key,
     this.color=Colors.blueGrey,
    required this.text,
     this.size=16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: 
        FontWeight.w300,
        color: color,
      ),
    );
  }
}
