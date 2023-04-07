import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbeerti/app/modules/question/controllers/question_controller.dart';
import 'package:mbeerti/global/palette.dart';

import 'main_text.dart';

class QuestionTemplate extends GetView<QuestionController> {
  const QuestionTemplate({
    Key? key,
    this.onTap,
    required this.nav,
    required this.codeKey,
    required this.codeKeyAlt,
    required this.isSelected,
    required this.isSelectedAlt,
    required this.storageNum,
    required this.Qn,
    required this.mainQ,
    required this.Q1,
    required this.Q2,
  }) : super(key: key);

  final String? nav;
  final RxObjectMixin? codeKey;
  final RxObjectMixin? codeKeyAlt;
  final RxObjectMixin? isSelected;
  final RxObjectMixin? isSelectedAlt;
  final String? storageNum;
  final String Q1;
  final String Q2;
  final String mainQ;
  final String Qn;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Text(
                Qn,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'NTKR',
                  color: hopGreen,
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: MainText(
                text: mainQ,
                fontWeight: FontWeight.w700,
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    //1-A.
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 40,
                        horizontal: 120,
                      ),
                      child: InkWell(
                        onTap: () {
                          if (isSelectedAlt?.value == true) {
                            isSelected?.value = true;
                            isSelectedAlt?.value = false;
                          } else {
                            isSelected?.value = true;
                          }
                          controller.storage.write('${storageNum}', 'A');
                          onTap;
                          print(controller.storage
                              .read('${storageNum}')
                              .toString());
                          Get.toNamed(nav!);
                        },
                        onHover: (h) {
                          codeKey?.value = h;
                        },
                        child: Obx(
                          () => AnimatedContainer(
                            width: codeKey?.value ? 530 : 460,
                            height: codeKey?.value ? 155 : 130,
                            transform: Transform.translate(
                                    offset: Offset(0, codeKey?.value ? -25 : 0))
                                .transform,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.ease,
                            decoration: BoxDecoration(
                                color:
                                    isSelected?.value ? hopGreen : Colors.white,
                                borderRadius: BorderRadius.circular(40),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.7),
                                    blurRadius: 5.0,
                                    spreadRadius: 0.0,
                                    offset: const Offset(0, 7),
                                  ),
                                ]),
                            child: Center(
                              child: Text(
                                Q1,
                                style: TextStyle(
                                    color: isSelected?.value
                                        ? Colors.white
                                        : hopGreen,
                                    fontFamily: 'NTKR',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    //1-B.
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 40,
                        horizontal: 120,
                      ),
                      child: InkWell(
                        onTap: () {
                          if (isSelected?.value == true) {
                            isSelectedAlt?.value = true;
                            isSelected?.value = false;
                          } else {
                            isSelectedAlt?.value = true;
                          }
                          controller.storage.write('${storageNum}', 'B');
                          onTap;
                          print(controller.storage
                              .read('${storageNum}')
                              .toString());
                          Get.toNamed(nav!);
                        },
                        onHover: (h) {
                          codeKeyAlt?.value = h;
                        },
                        child: Obx(
                          () => AnimatedContainer(
                            width: codeKeyAlt?.value ? 530 : 460,
                            height: codeKeyAlt?.value ? 155 : 130,
                            transform: Transform.translate(
                                    offset:
                                        Offset(0, codeKeyAlt?.value ? -25 : 0))
                                .transform,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.ease,
                            // padding: EdgeInsets.all(codeKey?.value ? 30 : 10),
                            decoration: BoxDecoration(
                                color: isSelectedAlt?.value
                                    ? hopGreen
                                    : Colors.white,
                                // color: codeKey?.value ? hopGreen : Colors.white,
                                borderRadius: BorderRadius.circular(40),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.7),
                                    blurRadius: 5.0,
                                    spreadRadius: 0.0,
                                    offset: const Offset(0, 7),
                                  ),
                                ]),
                            child: Center(
                              child: Text(
                                Q2,
                                style: TextStyle(
                                    color: isSelectedAlt?.value
                                        ? Colors.white
                                        : hopGreen,
                                    fontFamily: 'NTKR',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
