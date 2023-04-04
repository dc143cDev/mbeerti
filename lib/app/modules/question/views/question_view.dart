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

class Question2View extends GetView<QuestionController> {
  const Question2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    return QuestionTemplate(
      nav: '/question3',
      codeKey: controller.hover1,
      codeKeyAlt: controller.hover2,
      isSelected: controller.isSelected2A,
      isSelectedAlt: controller.isSelected2B,
      storageNum: '2',
      Qn: 'Q2.',
      mainQ: '테스트 질문입니다22.',
      Q1: '테스트 질문의 첫 응답입니다.22',
      Q2: '테스트 질문의 두번째 응답입니2다22.',
    );
  }
}

class Question3View extends GetView<QuestionController> {
  const Question3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    return QuestionTemplate(
      nav: '/question4',
      codeKey: controller.hover1,
      codeKeyAlt: controller.hover2,
      isSelected: controller.isSelected3A,
      isSelectedAlt: controller.isSelected3B,
      storageNum: '3',
      Qn: 'Q3.',
      mainQ: '테스트 질문입니다33.',
      Q1: '테스트 질문의 첫 응답입니다.33',
      Q2: '테스트 질문의 두번째 응답입니2다33.',
    );
  }
}

class Question4View extends GetView<QuestionController> {
  const Question4View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    return QuestionTemplate(
      nav: '/question5',
      codeKey: controller.hover1,
      codeKeyAlt: controller.hover2,
      isSelected: controller.isSelected4A,
      isSelectedAlt: controller.isSelected4B,
      storageNum: '4',
      Qn: 'Q4.',
      mainQ: '테스트 질문입니다44.',
      Q1: '테스트 질문의 첫 응답입니다.44',
      Q2: '테스트 질문의 두번째 응답입니2다44.',
    );
  }
}

class Question5View extends GetView<QuestionController> {
  const Question5View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    return QuestionTemplate(
      nav: '/question6',
      codeKey: controller.hover1,
      codeKeyAlt: controller.hover2,
      isSelected: controller.isSelected5A,
      isSelectedAlt: controller.isSelected5B,
      storageNum: '5',
      Qn: 'Q5.',
      mainQ: '테스트 질문입니다55.',
      Q1: '테스트 질문의 첫 응답입니다.55',
      Q2: '테스트 질문의 두번째 응답입니2다55.',
    );
  }
}

class Question6View extends GetView<QuestionController> {
  const Question6View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    return QuestionTemplate(
      nav: '/question7',
      codeKey: controller.hover1,
      codeKeyAlt: controller.hover2,
      isSelected: controller.isSelected6A,
      isSelectedAlt: controller.isSelected6B,
      storageNum: '6',
      Qn: 'Q6.',
      mainQ: '테스트 질문입니다66.',
      Q1: '테스트 질문의 첫 응답입니다.66',
      Q2: '테스트 질문의 두번째 응답입니2다66.',
    );
  }
}

class Question7View extends GetView<QuestionController> {
  const Question7View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    return QuestionTemplate(
      nav: '/question8',
      codeKey: controller.hover1,
      codeKeyAlt: controller.hover2,
      isSelected: controller.isSelected7A,
      isSelectedAlt: controller.isSelected7B,
      storageNum: '7',
      Qn: 'Q7.',
      mainQ: '테스트 질문입니다77.',
      Q1: '테스트 질문의 첫 응답입니다.77',
      Q2: '테스트 질문의 두번째 응답입니2다77.',
    );
  }
}

class Question8View extends GetView<QuestionController> {
  const Question8View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    return QuestionTemplate(
      nav: '/question9',
      codeKey: controller.hover1,
      codeKeyAlt: controller.hover2,
      isSelected: controller.isSelected8A,
      isSelectedAlt: controller.isSelected8B,
      storageNum: '8',
      Qn: 'Q8.',
      mainQ: '테스트 질문입니다88.',
      Q1: '테스트 질문의 첫 응답입니다.88',
      Q2: '테스트 질문의 두번째 응답입니2다88.',
      onTap: controller.getCodeData(),
    );
  }
}

class Question9View extends GetView<QuestionController> {
  const Question9View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    return QuestionTemplate(
      nav: '/question10',
      codeKey: controller.hover1,
      codeKeyAlt: controller.hover2,
      isSelected: controller.isSelected9A,
      isSelectedAlt: controller.isSelected9B,
      storageNum: '9',
      Qn: 'Q9.',
      mainQ: '테스트 질문입니다99.',
      Q1: '테스트 질문의 첫 응답입니다.99',
      Q2: '테스트 질문의 두번째 응답입니2다99.',
    );
  }
}
