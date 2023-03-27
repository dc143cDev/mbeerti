import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbeerti/app/modules/question/controllers/question_controller.dart';
import 'package:mbeerti/global/palette.dart';

class QuestionButton<T> extends GetView<QuestionController> {
  QuestionButton({
    Key? key,
    this.onTap,
    this.question,
    this.codeKey,
    this.isSelected,
    required this.value,
  }) : super(key: key);

  final String? question;
  final Function()? onTap;
  late final RxObjectMixin? codeKey;
  late final RxObjectMixin? isSelected;
  final T value;

  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 120,
      ),
      child: InkWell(
        onTap: onTap,
        onHover: (h) {
          codeKey?.value = h;
          // print(controller.isHover.value.toString());
        },
        child: Obx(
          () => AnimatedContainer(
            width: codeKey?.value ? 530 : 460,
            height: codeKey?.value ? 155 : 130,
            transform:
                Transform.translate(offset: Offset(0, codeKey?.value ? -25 : 0))
                    .transform,
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
            // padding: EdgeInsets.all(codeKey?.value ? 30 : 10),
            decoration: BoxDecoration(
                color: isSelected?.value ? hopGreen : Colors.white,
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
                question!,
                style: TextStyle(
                    color: isSelected?.value ? Colors.white : hopGreen,
                    fontFamily: 'NTKR',
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
