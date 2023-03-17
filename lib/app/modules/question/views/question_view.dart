import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mbeerti/app/modules/question/views/question_button.dart';
import 'package:mbeerti/app/modules/question/views/question2_view.dart';

import '../controllers/question_controller.dart';

class QuestionView extends GetView<QuestionController> {
  const QuestionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
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
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    //1-A.
                    child: QuestionButton(
                      question: '첫째 질문.',
                      onTap: () {
                        controller.questionList.insert(0, 'A');
                        Get.to(Question2View());
                      },
                    ),
                  ),
                  Expanded(
                    //1-A.
                    child: QuestionButton(
                      question: '둘째 질문.',
                      onTap: () {
                        controller.questionList.insert(0, 'B');
                        Get.to(Question2View());
                      },
                    ),
                  ),
                  Expanded(
                    //1-A.
                    child: QuestionButton(
                      question: '셋째 질문.',
                      onTap: () {
                        controller.questionList.insert(0, 'C');
                        Get.to(Question2View());
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
