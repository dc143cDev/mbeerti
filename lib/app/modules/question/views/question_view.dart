import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mbeerti/app/modules/question/views/question_button.dart';
import 'package:mbeerti/question.dart';

import '../controllers/question_controller.dart';

class QuestionView extends GetView<QuestionController> {
  const QuestionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuestionView'),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Text('애니메이션 일러스트 자리'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: Q.testQ.length,
                itemBuilder: (BuildContext, i) {
                  return QuestionButton(question: '${Q.testQ[i]}');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
