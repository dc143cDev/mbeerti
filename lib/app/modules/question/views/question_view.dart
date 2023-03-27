import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mbeerti/global/question_button.dart';

import '../controllers/question_controller.dart';

class QuestionView extends GetView<QuestionController> {
  const QuestionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    // Get.put(ResultController());
    // ResultController resultController = ResultController();
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Text('애니메이션 일러스트 자리(임시)'),
            ),
            Expanded(
              flex: 2,
              child: Text('(음용성 1. 선호하는 탄산 질감에 관한 질문)'),
            ),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    //1-A.
                    child: QuestionButton(
                      value: 1,
                      codeKey: controller.hover1,
                      question: '탄산음료(강한 탄산감 선호).',
                      onTap: () {
                        // resultController.questionList.insert(0, 'A');
                        // Get.toNamed('/question2');
                        controller.storage.write('1', 'A');
                        Get.toNamed('/question2');
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    //1-B.
                    child: QuestionButton(
                      value: 2,
                      codeKey: controller.hover2,
                      question: '부드러운 라떼(탄산이 아예 없는 부드러운 질감 선호).',
                      onTap: () {
                        // resultController.questionList.insert(0, 'B');
                        // Get.toNamed('/question2');
                        controller.storage.write('1', 'B');
                        Get.toNamed('/question2');
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    //1-C.
                    child: QuestionButton(
                      value: 3,
                      codeKey: controller.hover3,
                      question: '.',
                      onTap: () {
                        // resultController.questionList.insert(0, 'C');
                        // Get.toNamed('/question2');
                        controller.storage.write('1', 'C');
                        Get.toNamed('/question2');
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40,
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
