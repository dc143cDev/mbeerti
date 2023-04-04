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
    Get.put(ResultController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.animationTest.value = true;
        },
      ),
      appBar: AppBar(
        title: const Text('ResultView12'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                // Container(
                //   width: 200,
                //   height: 200,
                //   color: Colors.red,
                // ),
                Obx(
                  () => AnimatedContainer(
                    width: controller.animationTest.value ? 200 : 100,
                    height: controller.animationTest.value ? 200 : 100,
                    duration: Duration(seconds: 2),
                    child: ModelViewer(
                      src:
                          'https://firebasestorage.googleapis.com/v0/b/mbeerti-ffa02.appspot.com/o/objects%2Fbeer_really_done%20(2).glb?alt=media&token=8b71e98b-2031-4774-a68d-aa0e48fd1080',
                      ar: false,
                      autoRotate: true,
                      cameraControls: true,
                      disableZoom: true,
                      disablePan: true,
                      disableTap: false,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
