import 'package:flutter/material.dart';

class QuestionButton extends StatelessWidget {
  const QuestionButton({Key? key, required this.question}) : super(key: key);

  final String question;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(question),
    );
  }
}
