import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class QuestionController extends GetxController {
  final storage = GetStorage();

  List<String> firstCode = <String>[].obs;

  List<String> DT = <String>[].obs;
  List<String> SH = <String>[].obs;
  List<String> FN = <String>[].obs;

  var columnUp = false.obs;

  var isSelected1A = false.obs;
  var isSelected1B = false.obs;

  var isSelected2A = false.obs;
  var isSelected2B = false.obs;

  var isSelected3A = false.obs;
  var isSelected3B = false.obs;

  var isSelected4A = false.obs;
  var isSelected4B = false.obs;

  var isSelected5A = false.obs;
  var isSelected5B = false.obs;

  var isSelected6A = false.obs;
  var isSelected6B = false.obs;

  var isSelected7A = false.obs;
  var isSelected7B = false.obs;

  var isSelected8A = false.obs;
  var isSelected8B = false.obs;

  var isSelected9A = false.obs;
  var isSelected9B = false.obs;

  var hover1 = false.obs;
  var hover2 = false.obs;

  getCodeData(){
      print(storage.read('1').toString());
      print(storage.read('2').toString());
      print(storage.read('3').toString());
      print(storage.read('4').toString());
      print(storage.read('5').toString());
      print(storage.read('6').toString());
      print(storage.read('7').toString());

  }

  getFirstCode() {
    firstCode.clear();
    firstCode.insert(0, storage.read('1'));
    firstCode.insert(1, storage.read('2'));
    firstCode.insert(2, storage.read('3'));
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
