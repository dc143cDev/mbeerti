import 'package:get/get.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:get_storage/get_storage.dart';

class QuestionController extends GetxController {
  final storage = GetStorage();

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

  var A1 = false.obs;
  var A2 = false.obs;
  var A3 = false.obs;

  isHovered() {
    isHover.value == true;
  }

  getResult() {
    storage.read('1');
    storage.read('2');
    print(storage.read('1'));
    print(storage.read('2'));
  }

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
