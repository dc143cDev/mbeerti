import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

import 'package:get/get.dart';
import 'package:mbeerti/app/modules/question/controllers/question_controller.dart';
import 'package:mbeerti/global/question_button.dart';
import 'package:mbeerti/app/modules/result/controllers/result_controller.dart';

import '../../../../global/main_text.dart';
import '../../../../global/palette.dart';

class Question3View extends GetView<QuestionController> {
  const Question3View({Key? key}) : super(key: key);
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
                  'Q3.',
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
                text: '처음 방문해보는 보틀샵, 진열대에는 처음 보는 술들로 가득하다.\n당신의 선택은?',
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
                      isSelected: controller.isSelected3A,
                      question: '모험은 싫어. 실패 없는 맛으로 고르자.',
                      onTap: () {
                        if (controller.isSelected3B.value ||
                            controller.isSelected3C.value ||
                            controller.isSelected3D.value == true) {
                          controller.isSelected3A.value = true;
                          controller.isSelected3B.value = false;
                          controller.isSelected3C.value = false;
                          controller.isSelected3D.value = false;
                        } else {
                          controller.isSelected3A.value = true;
                        }
                        controller.hover1.value = true;
                        controller.storage.write('3', 'A');
                        print('q3: ${controller.storage.read('3')}');
                        controller.getFirstCode();
                        if (controller.firstCode.toString() == '[A, A, A]' ||
                            controller.firstCode.toString() == '[D, D, D]') {
                          Get.toNamed('/questionEx');
                        } else
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
                      isSelected: controller.isSelected3B,
                      question: '그래도 적당히 들어본 걸로 고른다.',
                      onTap: () {
                        if (controller.isSelected3A.value ||
                            controller.isSelected3C.value ||
                            controller.isSelected3D.value == true) {
                          controller.isSelected3B.value = true;
                          controller.isSelected3A.value = false;
                          controller.isSelected3C.value = false;
                          controller.isSelected3D.value = false;
                        } else {
                          controller.isSelected3B.value = true;
                        }
                        controller.isSelected3B.value = true;
                        controller.hover2.value = true;
                        controller.storage.write('3', 'B');
                        print('q3: ${controller.storage.read('3')}');
                        controller.getFirstCode();
                        if (controller.firstCode.toString() == '[A, A, A]' ||
                            controller.firstCode.toString() == '[D, D, D]') {
                          Get.toNamed('/questionEx');
                        } else
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
                      isSelected: controller.isSelected3C,
                      question: '먹는것도 경험이니까, 오늘은 평소에 안 먹어본 걸로 고를래.',
                      onTap: () {
                        if (controller.isSelected3A.value ||
                            controller.isSelected3B.value ||
                            controller.isSelected3D == true) {
                          controller.isSelected3C.value = true;
                          controller.isSelected3A.value = false;
                          controller.isSelected3B.value = false;
                          controller.isSelected3D.value = false;
                        } else {
                          controller.isSelected3C.value = true;
                        }
                        controller.isSelected3C.value = true;
                        controller.hover3.value = true;
                        controller.storage.write('3', 'C');
                        print('q3: ${controller.storage.read('3')}');
                        controller.getFirstCode();
                        if (controller.firstCode.toString() == '[A, A, A]' ||
                            controller.firstCode.toString() == '[D, D, D]') {
                          Get.toNamed('/questionEx');
                        } else
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
                      value: 4,
                      codeKey: controller.hover4,
                      isSelected: controller.isSelected3D,
                      question: '이중에서 제일 특이한 술이 뭐에요?',
                      onTap: () {
                        if (controller.isSelected3A.value ||
                            controller.isSelected3B.value ||
                            controller.isSelected3C.value == true) {
                          controller.isSelected3D.value = true;
                          controller.isSelected3A.value = false;
                          controller.isSelected3B.value = false;
                          controller.isSelected3C.value = false;
                        } else {
                          controller.isSelected3D.value = true;
                        }
                        controller.isSelected3D.value = true;
                        controller.hover4.value = true;
                        controller.storage.write('3', 'D');
                        print('q3: ${controller.storage.read('3')}');
                        controller.getFirstCode();
                        if (controller.firstCode.toString() == '[A, A, A]' ||
                            controller.firstCode.toString() == '[D, D, D]') {
                          Get.toNamed('/questionEx');
                        } else
                          Get.toNamed('/question4');
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
