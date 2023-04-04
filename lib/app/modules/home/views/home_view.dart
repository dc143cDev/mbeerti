import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mbeerti/app/modules/result/views/result_view.dart';
import 'package:mbeerti/global/logo_text.dart';
import 'package:mbeerti/global/main_text.dart';
import 'package:mbeerti/global/palette.dart';

import '../../question/views/question_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(controller.cpiCounter.value);
          print(controller.animationCount.value);
          Get.to(ResultView());
        },
      ),
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Obx(
        () => Center(
          child: controller.cpiCounter.value
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(
                      () => AnimatedContainer(
                        duration: Duration(milliseconds: 320),
                        transform: Transform.translate(
                          offset: Offset(
                              0, controller.animationCount.value ? -25 : 0),
                        ).transform,
                        curve: Curves.ease,
                        child: AnimatedOpacity(
                          opacity: controller.animationCount.value ? 1.0 : 0.0,
                          duration: Duration(milliseconds: 320),
                          child: LogoText(
                            text: 'Mbeerti',
                            fontSize: 120,
                            fontColor: hopGreen,
                          ),
                        ),
                      ),
                    ),
                    Obx(
                      () => AnimatedContainer(
                        duration: Duration(milliseconds: 400),
                        transform: Transform.translate(
                          offset: Offset(
                              0, controller.animationCount.value ? -25 : 0),
                        ).transform,
                        child: AnimatedOpacity(
                          opacity: controller.animationCount.value ? 1.0 : 0.0,
                          duration: Duration(milliseconds: 400),
                          child: Text(
                            '세상은 넓고, 먹어볼 맥주는 많다.',
                            style: TextStyle(
                              fontFamily: 'NTKR',
                              fontSize: 35,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Obx(
                      () => AnimatedContainer(
                        duration: Duration(milliseconds: 480),
                        transform: Transform.translate(
                          offset: Offset(
                              0, controller.animationCount.value ? -25 : 0),
                        ).transform,
                        child: AnimatedOpacity(
                          opacity: controller.animationCount.value ? 1.0 : 0.0,
                          duration: Duration(milliseconds: 480),
                          child: Text(
                            '맥주 스타일의 가짓수가 총 몇가지나 될 거라고 생각하나요?\n정확히는 알 수 없지만, 약 200가지가 넘어요.\n먼 옛날부터 전해져온 클래식부터, 창의력 넘치고 트랜디한 크래프트 맥주까지.\nMbeerti가 당신에게 제일 잘 어울리는 맥주 스타일을 찾아드릴게요.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'NTKR',
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Obx(
                      () => AnimatedContainer(
                        duration: Duration(milliseconds: 360),
                        transform: Transform.translate(
                          offset: Offset(
                              0, controller.animationCount.value ? -25 : 0),
                        ).transform,
                        child: TextButton(
                          onPressed: () {
                            Get.to(Question1View());
                          },
                          child: AnimatedOpacity(
                            opacity:
                                controller.animationCount.value ? 1.0 : 0.0,
                            duration: Duration(milliseconds: 360),
                            child: MainText(
                              text: '테스트 시작하기',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : CircleAvatar(
                  radius: 35,
                  backgroundColor: hopGreen,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
        ),
      ),
    );
  }
}
