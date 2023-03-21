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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(controller.isHover.value.toString());
        },
      ),
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
              flex: 3,
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
                      codeKey: controller.A1,
                      question: '탄산음료(강한 탄산감 선호).',
                      onTap: () {
                        controller.questionList.insert(0, 'A');
                        Get.to(Question2View());
                      },
                    ),
                  ),
                  Expanded(
                    //1-B.
                    child: QuestionButton(
                      value: 2,
                      codeKey: controller.A2,
                      question: '부드러운 라떼(탄산이 아예 없는 부드러운 질감 선호).',
                      onTap: () {
                        controller.questionList.insert(0, 'B');
                        Get.to(Question2View());
                      },
                    ),
                  ),
                  Expanded(
                    //1-C.
                    child: QuestionButton(
                      value: 3,
                      codeKey: controller.A3,
                      question: '.',
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
