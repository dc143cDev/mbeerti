import 'package:get/get.dart';

class QuestionController extends GetxController {
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

  questionBtnClicked(question) {}

  @override
  void onInit() {
    super.onInit();
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
