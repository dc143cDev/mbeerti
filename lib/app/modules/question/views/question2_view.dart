import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mbeerti/app/modules/question/controllers/question_controller.dart';
import 'package:mbeerti/app/modules/question/views/question_button.dart';

class Question2View extends GetView<QuestionController> {
  const Question2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.find<QuestionController>();
    // Get.put(ResultController());
    // ResultController resultController = ResultController();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // print(resultController.questionList.join().toString());
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
              flex: 2,
              child: Text('(? 두번째 질문)'),
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
                      question: '두번째 페이지 첫째 질문.',
                      onTap: () {
                        // resultController.questionList.insert(1, 'A');
                        // Get.toNamed('/question3');
                        controller.storage.write('2', 'A');
                        Get.toNamed('/question3');
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    //1-A.
                    child: QuestionButton(
                      value: 2,
                      codeKey: controller.hover2,
                      question: '두번째 페이지 둘째 질문.',
                      onTap: () {
                        // resultController.questionList.insert(1, 'B');
                        // Get.toNamed('/question3');
                        controller.storage.write('2', 'B');
                        Get.toNamed('/question3');
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    //1-A.
                    child: QuestionButton(
                      value: 3,
                      codeKey: controller.hover3,
                      question: '두번째 페이지 셋째 질문.',
                      onTap: () {
                        // resultController.questionList.insert(1, 'C');
                        // Get.toNamed('/question3');
                        controller.storage.write('2', 'C');
                        Get.toNamed('/question3');
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
