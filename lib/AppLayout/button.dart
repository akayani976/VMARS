import 'package:flutter/material.dart';
import 'package:vmar/AppLayout/getX.dart';

class AppButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final double width;
  final String text;

  const AppButton(
      {super.key,
      this.color = Colors.white,
      this.textColor = Colors.black54,
      this.width = 350,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            fontSize: AppLayout.getHeight(22),
            fontWeight: FontWeight.w500,
            color: textColor),
      )),
    );
  }
}
