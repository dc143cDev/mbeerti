import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Question4View extends GetView {
  const Question4View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question4View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Question4View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
