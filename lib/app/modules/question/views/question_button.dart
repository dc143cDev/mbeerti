import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbeerti/app/modules/question/controllers/question_controller.dart';

class QuestionButton<T> extends GetView<QuestionController> {
  QuestionButton({
    Key? key,
    this.onTap,
    this.question,
    this.codeKey,
    required this.value,
  }) : super(key: key);

  final String? question;
  final Function()? onTap;
  late final RxObjectMixin? codeKey;
  final T value;

  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: InkWell(
        onTap: onTap,
        onHover: (h) {
          codeKey?.value = h;
          print(controller.isHover.value.toString());
        },
        child: Obx(
          () => AnimatedContainer(
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
            padding: EdgeInsets.all(codeKey?.value == false ? 45 : 30),
            decoration: BoxDecoration(
              color: codeKey?.value == false ? Colors.teal : Colors.purple,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(question!),
          ),
        ),
      ),
    );
  }
}
