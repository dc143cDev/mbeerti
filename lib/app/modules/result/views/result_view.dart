import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:get/get.dart';

import '../controllers/result_controller.dart';

class ResultView extends GetView<ResultController> {
  const ResultView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ResultView'),
        centerTitle: true,
      ),
      body: Center(child: Cube(
        onSceneCreated: (Scene s) {
          s.camera.zoom = 10;
          s.world
              .add(Object(fileName: 'assets/objects/beer_test/beer_done.obj'));
        },
      )),
    );
  }
}
