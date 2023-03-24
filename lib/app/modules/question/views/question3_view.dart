import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

import 'package:get/get.dart';
import 'package:mbeerti/app/modules/question/controllers/question_controller.dart';
import 'package:mbeerti/app/modules/question/views/question_button.dart';
import 'package:mbeerti/app/modules/result/controllers/result_controller.dart';

class Question3View extends GetView<QuestionController> {
  const Question3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyReplace(() => QuestionController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.getResult();
          print(controller.questionList.join().toString());
        },
      ),
      appBar: AppBar(
        title: const Text('Question3View'),
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
              child: Text('(세번째 질문)'),
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
                      question: '3-A.',
                      onTap: () {
                        // resultController.questionList.insert(0, 'A');
                        // Get.toNamed('/question2');
                        controller.storage.write('1', 'A');
                        Get.toNamed('/question4');
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
                        Get.toNamed('/question4');
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
                        Get.toNamed('/question4');
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
