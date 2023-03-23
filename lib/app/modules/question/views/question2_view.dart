import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mbeerti/app/modules/question/controllers/question_controller.dart';
import 'package:mbeerti/app/modules/question/views/question_button.dart';
import 'package:mbeerti/app/modules/result/controllers/result_controller.dart';

class Question2View extends GetView<QuestionController> {
  const Question2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    Get.put(ResultController());
    ResultController resultController = ResultController();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(resultController.questionList.join().toString());
        },
      ),
      appBar: AppBar(
        title: const Text(''),
        centerTitle: true,
        automaticallyImplyLeading: false,
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
                      value: 1,
                      codeKey: controller.A1,
                      question: '두번째 페이지 첫째 질문.',
                      onTap: () {
                        resultController.questionList.insert(1, 'A');
                        // Get.toNamed('/question3');
                        Get.offAndToNamed('/question3');
                      },
                    ),
                  ),
                  Expanded(
                    //1-A.
                    child: QuestionButton(
                      value: 2,
                      codeKey: controller.A2,
                      question: '두번째 페이지 둘째 질문.',
                      onTap: () {
                        resultController.questionList.insert(1, 'B');
                        // Get.toNamed('/question3');
                        Get.offAndToNamed('/question3');
                      },
                    ),
                  ),
                  Expanded(
                    //1-A.
                    child: QuestionButton(
                      value: 3,
                      codeKey: controller.A3,
                      question: '두번째 페이지 셋째 질문.',
                      onTap: () {
                        resultController.questionList.insert(1, 'C');
                        // Get.toNamed('/question3');
                        Get.offAndToNamed('/question3');
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
