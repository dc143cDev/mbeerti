import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mbeerti/app/modules/question/views/question_view.dart';
import 'package:mbeerti/global/logo_text.dart';
import 'package:mbeerti/global/main_text.dart';
import 'package:mbeerti/global/palette.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogoText(
              text: 'Mbeerti',
              fontSize: 120,
              fontColor: hopGreen,
            ),
            TextButton(
              onPressed: () {
                Get.off(QuestionView());
              },
              child: MainText(
                text: '테스트 시작하기',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
