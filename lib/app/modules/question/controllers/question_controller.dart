import 'package:get/get.dart';
import 'package:flutter_cube/flutter_cube.dart';

class QuestionController extends GetxController {
  late Object Hamburger;

  List<String> questionList = <String>[].obs;

  List<String> Q1 = <String>[
    '첫번째 세션의 첫 질문입니다.',
    '이게 아마도 두번째 질문...',
    '그리고 이게 세번째 질문일 거에요.',
  ];

  List<String> Q2 = <String>[
    '와인',
    '위스키',
    '맥주',
  ];

  var isHover = true.obs;

  var A1 = true.obs;
  var A2 = true.obs;
  var A3 = true.obs;

  isHovered() {
    isHover.value == true;
  }

  questionBtnClicked(question) {}

  @override
  void onInit() {
    super.onInit();
    Hamburger = Object(fileName: "assets/Hamburger/Hamburger_01.obj");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
