import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class QuestionController extends GetxController {
  final storage = GetStorage();

  List<String> questionList = <String>[].obs;

  var columnUp = false.obs;

  var isSelectedA1 = false.obs;
  var isSelectedA2 = false.obs;
  var isSelectedA3 = false.obs;
  var isSelectedA4 = false.obs;

  var isSelectedB1 = false.obs;
  var isSelectedB2 = false.obs;
  var isSelectedB3 = false.obs;
  var isSelectedB4 = false.obs;

  var hover1 = false.obs;
  var hover2 = false.obs;
  var hover3 = false.obs;
  var hover4 = false.obs;

  getResult() {
    questionList.insert(0, storage.read('1'));
    questionList.insert(1, storage.read('2'));
  }

  @override
  void onInit() {
    columnUp.value == true;
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
