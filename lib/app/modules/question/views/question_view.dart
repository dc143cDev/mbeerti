import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mbeerti/global/question_template.dart';
import '../controllers/question_controller.dart';

//D-T
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
      mainQ: '오랜만에 잡힌 술 약속, 둘 중 약속 장소를 고르자면?',
      Q1: '오늘은 먹고 죽는 날. 생맥주 무한리필 포차.',
      Q2: '잔잔하게 술을 즐길수있는 바.',
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
      mainQ: '드디어 주문한 술이 나왔다. 내 스타일은?',
      Q1: '술은 취하기 위해 먹는 것, 일단 들이킨다.',
      Q2: '술의 외관과 향, 맛을 천천히 음미한다.',
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
      mainQ: '자주 가는 술집이 있던데, 이유가 있나요?',
      Q1: '가격이 싸고 안주가 맛있어서.',
      Q2: '분위기가 좋고 취급하는 술이 다양해서.',
    );
  }
}

//S-H
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
      mainQ: '카페에서 커피를 주문한다면?',
      Q1: '마시기 편한 연한 아메리카노.',
      Q2: '진하게 내린 에스프레소.',
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

//F-N
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
      mainQ: '편의점 맥주 코너 앞에 섰다. 내 선택은?',
      Q1: '늘 먹던 걸로 고른다.',
      Q2: '처음 보는 라벨을 고른다.',
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
