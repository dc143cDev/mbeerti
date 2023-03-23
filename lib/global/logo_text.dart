import 'package:flutter/material.dart';

class LogoText extends StatelessWidget {
  const LogoText(
      {Key? key,
      required this.text,
      required this.fontColor,
      required this.fontSize})
      : super(key: key);
  final String? text;
  final Color? fontColor;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontFamily: 'LOB',
        color: fontColor,
        fontSize: fontSize,
      ),
    );
  }
}
