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
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 300,
              height: 300,
              child: ModelViewer(
                src: 'assets/objects/beer_test/beer_really_done2.glb',
                ar: true,
                autoRotate: true,
                cameraControls: false,
                disableZoom: true,
                disablePan: true,
                disableTap: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 200,
              height: 200,
              child: ModelViewer(
                src: 'assets/objects/beer_test/beer_done.glb',
                ar: true,
                autoRotate: true,
                cameraControls: false,
                disableZoom: true,
                disablePan: true,
                disableTap: true,
              ),
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 400,
                  height: 400,
                  child: ModelViewer(
                    src: 'assets/objects/foods/chocolate.glb',
                    ar: true,
                    autoRotate: true,
                    cameraControls: false,
                    disableZoom: true,
                    disablePan: true,
                    disableTap: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 100,
                  height: 100,
                  child: ModelViewer(
                    src: 'assets/objects/foods/orange.glb',
                    ar: true,
                    autoRotate: true,
                    cameraControls: false,
                    disableZoom: true,
                    disablePan: true,
                    disableTap: true,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
