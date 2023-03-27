import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mbeerti/global/main_text.dart';
import 'package:mbeerti/global/palette.dart';

import '../../../../global/question_button.dart';
import '../controllers/question_controller.dart';

class Question1View extends GetView<QuestionController> {
  const Question1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.columnUp.value = true;
          // print(controller.isHover.value.toString());
        },
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 3,
                child: Text(
                  'Q1.',
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
                text: '오랜만에 잡힌 술 약속, 오늘은 내가 약속 장소를 정하는 날이에요.\n어디로 갈까요?',
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
                      isSelected: controller.isSelectedA1,
                      question: '탄산음료(강한 탄산감 선호).',
                      onTap: () {
                        if (controller.isSelectedA2.value ||
                            controller.isSelectedA3.value ||
                            controller.isSelectedA4.value == true) {
                          controller.isSelectedA1.value = true;
                          controller.isSelectedA2.value = false;
                          controller.isSelectedA3.value = false;
                          controller.isSelectedA4.value = false;
                        } else {
                          controller.isSelectedA1.value = true;
                        }
                        controller.hover1.value = true;
                        controller.storage.write('1', 'A');
                        print('q1: ${controller.storage.read('1')}');
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
                      isSelected: controller.isSelectedA2,
                      question: '부드러운 라떼(탄산이 아예 없는 부드러운 질감 선호).',
                      onTap: () {
                        if (controller.isSelectedA1.value ||
                            controller.isSelectedA3.value ||
                            controller.isSelectedA4.value == true) {
                          controller.isSelectedA2.value = true;
                          controller.isSelectedA1.value = false;
                          controller.isSelectedA3.value = false;
                          controller.isSelectedA4.value = false;
                        } else {
                          controller.isSelectedA2.value = true;
                        }
                        controller.isSelectedA2.value = true;
                        controller.hover2.value = true;
                        controller.storage.write('1', 'B');
                        print('q1: ${controller.storage.read('1')}');
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
                      isSelected: controller.isSelectedA3,
                      question: '.',
                      onTap: () {
                        if (controller.isSelectedA1.value ||
                            controller.isSelectedA2.value ||
                            controller.isSelectedA4 == true) {
                          controller.isSelectedA3.value = true;
                          controller.isSelectedA1.value = false;
                          controller.isSelectedA2.value = false;
                          controller.isSelectedA4.value = false;
                        } else {
                          controller.isSelectedA3.value = true;
                        }
                        controller.isSelectedA3.value = true;
                        controller.hover3.value = true;
                        controller.storage.write('1', 'C');
                        print('q1: ${controller.storage.read('1')}');
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
                      codeKey: controller.hover4,
                      isSelected: controller.isSelectedA4,
                      question: '.',
                      onTap: () {
                        if (controller.isSelectedA1.value ||
                            controller.isSelectedA2.value ||
                            controller.isSelectedA3.value == true) {
                          controller.isSelectedA4.value = true;
                          controller.isSelectedA1.value = false;
                          controller.isSelectedA2.value = false;
                          controller.isSelectedA3.value = false;
                        } else {
                          controller.isSelectedA4.value = true;
                        }
                        controller.isSelectedA4.value = true;
                        controller.hover4.value = true;
                        controller.storage.write('1', 'D');
                        print('q1: ${controller.storage.read('1')}');
                        Get.toNamed('/question2');
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
