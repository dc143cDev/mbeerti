import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mbeerti/global/question_template.dart';
import '../controllers/question_controller.dart';

class Question1View extends GetView<QuestionController> {
  const Question1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    return QuestionTemplate(
      nav: '/question2',
      codeKey: controller.hover1,
      codeKeyAlt: controller.hover2,
      isSelected: controller.isSelected1A,
      isSelectedAlt: controller.isSelected1B,
      storageNum: '1',
      Qn: 'Q1.',
      mainQ: '테스트 질문입니다.',
      Q1: '테스트 질문의 첫 응답입니다.',
      Q2: '테스트 질문의 두번째 응답입니다.',
    );
  }
}
