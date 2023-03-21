import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

import 'package:get/get.dart';
import 'package:mbeerti/app/modules/question/controllers/question_controller.dart';

class Question3View extends GetView<QuestionController> {
  const Question3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(controller.questionList.join().toString());
          print(controller.questionList.toString());
        },
      ),
      appBar: AppBar(
        title: const Text('Question3View'),
        centerTitle: true,
      ),
      body: Center(
          child: Cube(
        interactive: true,
        onSceneCreated: (Scene s) {
          s.world.add(Object(fileName: 'assets/Cheeseburger/Hamburger.obj'));
          s.camera.zoom = 13;
        },
      )),
    );
  }
}
