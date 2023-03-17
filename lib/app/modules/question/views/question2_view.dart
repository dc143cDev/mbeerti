import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mbeerti/app/modules/question/controllers/question_controller.dart';
import 'package:mbeerti/app/modules/question/views/question3_view.dart';
import 'package:mbeerti/app/modules/question/views/question_button.dart';

class Question2View extends GetView<QuestionController> {
  const Question2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(controller.questionList.join.toString());
        },
      ),
      appBar: AppBar(
        title: const Text(''),
        centerTitle: true,
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
                      question: '두번째 페이지 첫째 질문.',
                      onTap: () {
                        controller.questionList.insert(1, 'A');
                        Get.to(Question3View());
                      },
                    ),
                  ),
                  Expanded(
                    //1-A.
                    child: QuestionButton(
                      question: '두번째 페이지 둘째 질문.',
                      onTap: () {
                        controller.questionList.insert(1, 'B');
                        Get.to(Question3View());
                      },
                    ),
                  ),
                  Expanded(
                    //1-A.
                    child: QuestionButton(
                      question: '두번째 페이지 셋째 질문.',
                      onTap: () {
                        controller.questionList.insert(1, 'C');
                        Get.to(Question3View());
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
