import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbeerti/app/modules/question/controllers/question_controller.dart';

import '../../../../question.dart';

class QuestionButton extends GetView<QuestionController> {
  QuestionButton({
    Key? key,
    this.onTap,
    this.question,
  }) : super(key: key);

  final String? question;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 120),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: onTap,
              child: Text(question!),
            ),
          ),
        ],
      ),
    );
  }
}
