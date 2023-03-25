import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'package:model_viewer_plus/model_viewer_plus.dart';

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(200.0),
          child: ModelViewer(
            src: 'assets/objects/beer_done.glb',
            ar: true,
            autoRotate: true,
            cameraControls: false,
            disableZoom: true,
            disablePan: true,
            disableTap: true,
          ),
        ),
        //.glb
        // child: BabylonJSViewer(
        //   src: 'assets/objects/beer_done.glb',
        // ),
        //.obj
        // child: Cube(
        //   onSceneCreated: (Scene s) {
        //     s.camera.zoom = 10;
        //     s.world.add(
        //         Object(fileName: 'assets/objects/beer_test/beer_done1.obj'));
        //   },
        // ),
      ),
    );
  }
}
