import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

import 'package:get/get.dart';
import 'package:mbeerti/app/modules/question/controllers/question_controller.dart';
import 'package:mbeerti/app/modules/result/controllers/result_controller.dart';

class Question3View extends GetView<QuestionController> {
  const Question3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    Get.put(ResultController());
    ResultController resultController = ResultController();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(resultController.questionList.join().toString());
        },
      ),
      appBar: AppBar(
        title: const Text('Question3View'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: Cube(
        interactive: true,
        onSceneCreated: (Scene s) {
          s.world.add(
              Object(fileName: 'assets/objects/Cheeseburger/Hamburger.obj'));
          s.camera.zoom = 13;
        },
      )),
    );
  }
}
