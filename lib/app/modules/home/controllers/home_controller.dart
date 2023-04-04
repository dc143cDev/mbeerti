import 'package:get/get.dart';
import 'dart:async';

class HomeController extends GetxController {
  var animationCount = false.obs;
  var cpiCounter = false.obs;

  @override
  void onInit() {
    super.onInit();
    startCPI();
    // startLogoAnimation2();
  }

  @override
  void onReady() {
    super.onReady();
    // startLogoAnimation1();
  }

  startCPI() {
    Future.delayed(Duration(seconds: 2), () {
      cpiCounter.value = true;
      startLogoAnimation1();
    });
  }

  startLogoAnimation1() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      animationCount.value = true;
    });
  }

  // startLogoAnimation2() {
  //   Timer.periodic(Duration(seconds: 2), (timer) {
  //     animationCount.value = false;
  //   });
  // }

  @override
  void onClose() {
    super.onClose();
  }
}
