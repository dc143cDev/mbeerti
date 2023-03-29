import 'package:flutter/material.dart';

import 'package:get/get.dart';

class QuestionExView extends GetView {
  const QuestionExView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuestionExView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'QuestionExView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
