import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/splacescreen_controller.dart';


class SplacescreenPage extends StatelessWidget {
  SplacescreenPage({super.key});
  final controller = Get.find<SplacescreenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("INI SPLASHSCREEN"),
        ),
      ),
    );
  }
}