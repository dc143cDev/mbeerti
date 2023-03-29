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
  var isSelected1C = false.obs;
  var isSelected1D = false.obs;

  var isSelected2A = false.obs;
  var isSelected2B = false.obs;
  var isSelected2C = false.obs;
  var isSelected2D = false.obs;

  var isSelected3A = false.obs;
  var isSelected3B = false.obs;
  var isSelected3C = false.obs;
  var isSelected3D = false.obs;

  var hover1 = false.obs;
  var hover2 = false.obs;
  var hover3 = false.obs;
  var hover4 = false.obs;

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
