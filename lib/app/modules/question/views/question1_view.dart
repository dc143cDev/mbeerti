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
                text: '오랜만에 잡힌 술 약속, 이번 약속 장소는 내가 정하기로 했다.\n어디로 갈까?',
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
                      isSelected: controller.isSelected1A,
                      question: '오늘은 먹고 죽는 날. 생맥주 무한리필 호프집.',
                      onTap: () {
                        if (controller.isSelected1B.value ||
                            controller.isSelected1C.value ||
                            controller.isSelected1D.value == true) {
                          controller.isSelected1A.value = true;
                          controller.isSelected1B.value = false;
                          controller.isSelected1C.value = false;
                          controller.isSelected1D.value = false;
                        } else {
                          controller.isSelected1A.value = true;
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
                      isSelected: controller.isSelected1B,
                      question: '기분좋게 취하기 좋은 시끌벅적한 펍.',
                      onTap: () {
                        if (controller.isSelected1A.value ||
                            controller.isSelected1C.value ||
                            controller.isSelected1D.value == true) {
                          controller.isSelected1B.value = true;
                          controller.isSelected1A.value = false;
                          controller.isSelected1C.value = false;
                          controller.isSelected1D.value = false;
                        } else {
                          controller.isSelected1B.value = true;
                        }
                        controller.isSelected1B.value = true;
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
                      isSelected: controller.isSelected1C,
                      question: '잔잔하게 떠들면서 술을 즐기기 좋은 케주얼 바.',
                      onTap: () {
                        if (controller.isSelected1A.value ||
                            controller.isSelected1B.value ||
                            controller.isSelected1D == true) {
                          controller.isSelected1C.value = true;
                          controller.isSelected1A.value = false;
                          controller.isSelected1B.value = false;
                          controller.isSelected1D.value = false;
                        } else {
                          controller.isSelected1C.value = true;
                        }
                        controller.isSelected1C.value = true;
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
                      value: 4,
                      codeKey: controller.hover4,
                      isSelected: controller.isSelected1D,
                      question: '오로지 술에 집중. 몰트/테이스팅 바.',
                      onTap: () {
                        if (controller.isSelected1A.value ||
                            controller.isSelected1B.value ||
                            controller.isSelected1C.value == true) {
                          controller.isSelected1D.value = true;
                          controller.isSelected1A.value = false;
                          controller.isSelected1B.value = false;
                          controller.isSelected1C.value = false;
                        } else {
                          controller.isSelected1D.value = true;
                        }
                        controller.isSelected1D.value = true;
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
