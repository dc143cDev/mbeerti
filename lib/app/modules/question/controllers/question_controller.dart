import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class QuestionController extends GetxController {
  final storage = GetStorage();

  List<String> questionList = <String>[].obs;

  var isHover = true.obs;

  var hover1 = false.obs;
  var hover2 = false.obs;
  var hover3 = false.obs;

  // var result1 = ''.obs;
  // var result2 = ''.obs;
  // var result3 = ''.obs;
  // var result4 = ''.obs;
  // var result5 = ''.obs;

  getResult() {
    questionList.insert(0, storage.read('1'));
    questionList.insert(1, storage.read('2'));
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
