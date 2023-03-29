import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mbeerti/app/modules/home/views/home_view.dart';

import '../controllers/lock_controller.dart';

class LockView extends GetView<LockController> {
  const LockView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LockView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextFormField(
            controller: controller.passwordController,
          ),
          Center(
            child: TextButton(
              onPressed: () {
                if (controller.password == controller.passwordController.text) {
                  Get.off(HomeView());
                } else {
                  Get.snackbar('password error', 'f');
                }
                print(controller.password);
                print(controller.passwordController.text);
              },
              child: Text('insert password'),
            ),
          ),
        ],
      ),
    );
  }
}
