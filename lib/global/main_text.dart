import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  const MainText({Key? key, required this.text, this.fontWeight})
      : super(key: key);

  final String? text;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'NTKR',
        color: Colors.black,
        fontWeight: fontWeight,
        fontSize: 25,
      ),
    );
  }
}
