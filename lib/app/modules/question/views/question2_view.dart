import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mbeerti/app/modules/question/controllers/question_controller.dart';
import 'package:mbeerti/global/question_button.dart';

import '../../../../global/main_text.dart';
import '../../../../global/palette.dart';

class Question2View extends GetView<QuestionController> {
  const Question2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    return Scaffold(
      backgroundColor: Colors.white,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     controller.columnUp.value = true;
      //     // print(controller.isHover.value.toString());
      //   },
      // ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 3,
                child: Text(
                  'Q2.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'NTKR',
                    color: hopGreen,
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                )),
            Expanded(
              flex: 2,
              child: MainText(
                text: '카페에서 커피를 주문한다면, 나는 어떤 스타일?',
                fontWeight: FontWeight.w700,
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    //1-A.
                    child: QuestionButton(
                      value: 1,
                      codeKey: controller.hover1,
                      isSelected: controller.isSelected2A,
                      question: '편하게 마시기 쉬운 연한 아메리카노.',
                      onTap: () {
                        if (controller.isSelected2B.value ||
                            controller.isSelected2C.value ||
                            controller.isSelected2D.value == true) {
                          controller.isSelected2A.value = true;
                          controller.isSelected2B.value = false;
                          controller.isSelected2C.value = false;
                          controller.isSelected2D.value = false;
                        } else {
                          controller.isSelected2A.value = true;
                        }
                        controller.hover1.value = true;
                        controller.storage.write('2', 'A');
                        print('q2: ${controller.storage.read('2')}');
                        Get.toNamed('/question3');
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
                      isSelected: controller.isSelected2B,
                      question: '너무 연한건 싫어, 샷 추가 아메리카노.',
                      onTap: () {
                        if (controller.isSelected2A.value ||
                            controller.isSelected2C.value ||
                            controller.isSelected2D.value == true) {
                          controller.isSelected2B.value = true;
                          controller.isSelected2A.value = false;
                          controller.isSelected2C.value = false;
                          controller.isSelected2D.value = false;
                        } else {
                          controller.isSelected2B.value = true;
                        }
                        controller.isSelected2B.value = true;
                        controller.hover2.value = true;
                        controller.storage.write('2', 'B');
                        print('q2: ${controller.storage.read('2')}');
                        Get.toNamed('/question3');
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
                      isSelected: controller.isSelected2C,
                      question: '맛과 향이 진한 드립 커피.',
                      onTap: () {
                        if (controller.isSelected2A.value ||
                            controller.isSelected2B.value ||
                            controller.isSelected2D == true) {
                          controller.isSelected2C.value = true;
                          controller.isSelected2A.value = false;
                          controller.isSelected2B.value = false;
                          controller.isSelected2D.value = false;
                        } else {
                          controller.isSelected2C.value = true;
                        }
                        controller.isSelected2C.value = true;
                        controller.hover3.value = true;
                        controller.storage.write('2', 'C');
                        print('q2: ${controller.storage.read('2')}');
                        Get.toNamed('/question3');
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    //1-C.
                    child: QuestionButton(
                      value: 4,
                      codeKey: controller.hover4,
                      isSelected: controller.isSelected2D,
                      question: '걸쭉하게 내린 고농축 에스프레소.',
                      onTap: () {
                        if (controller.isSelected2A.value ||
                            controller.isSelected2B.value ||
                            controller.isSelected2C.value == true) {
                          controller.isSelected2D.value = true;
                          controller.isSelected2A.value = false;
                          controller.isSelected2B.value = false;
                          controller.isSelected2C.value = false;
                        } else {
                          controller.isSelected2D.value = true;
                        }
                        controller.isSelected2D.value = true;
                        controller.hover4.value = true;
                        controller.storage.write('2', 'D');
                        print('q2: ${controller.storage.read('2')}');
                        Get.toNamed('/question3');
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
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
