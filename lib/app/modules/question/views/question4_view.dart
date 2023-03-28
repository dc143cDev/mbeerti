import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mbeerti/app/modules/question/controllers/question_controller.dart';

class Question4View extends GetView<QuestionController> {
  const Question4View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question4View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          '${controller.firstCode.toString()}',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
