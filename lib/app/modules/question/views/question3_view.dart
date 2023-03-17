import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mbeerti/app/modules/question/controllers/question_controller.dart';

class Question3View extends GetView<QuestionController> {
  const Question3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(controller.questionList.toString());
        },
      ),
      appBar: AppBar(
        title: const Text('Question3View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Question3View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
