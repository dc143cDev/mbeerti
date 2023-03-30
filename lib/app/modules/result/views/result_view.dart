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
        title: const Text('ResultView10'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              child: ModelViewer(
                src: 'http://localhost:3000/assets/chocolate.glb',
                ar: false,
                autoRotate: true,
                cameraControls: true,
                disableZoom: true,
                disablePan: true,
                disableTap: false,
              ),
            ),
            Container(
              width: 50,
              height: 50,
              child: ModelViewer(
                src:
                    'https://modelviewer.dev/shared-assets/models/Astronaut.glb',
                ar: false,
                autoRotate: true,
                cameraControls: true,
                disableZoom: true,
                disablePan: true,
                disableTap: false,
              ),
            ),
            Container(
              width: 50,
              height: 50,
              child: ModelViewer(
                src: 'http://localhost:3000/assets/Astronaut.glb',
                ar: false,
                autoRotate: true,
                cameraControls: true,
                disableZoom: true,
                disablePan: true,
                disableTap: false,
              ),
            ),
            Container(
              width: 50,
              height: 50,
              child: Image(
                  image: NetworkImage(
                      'http://localhost:3000/assets/cappuccino.jpg')),
            ),
          ],
        ),
      ),
    );
  }
}
