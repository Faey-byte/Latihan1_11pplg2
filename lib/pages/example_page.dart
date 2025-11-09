import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/example_controller.dart';
import 'package:latihan1_11pplg2/pages/Wide/football_page_wide.dart';
import 'package:latihan1_11pplg2/pages/example_fitur/example_mobile.dart';
import 'package:latihan1_11pplg2/pages/example_fitur/example_widescreen.dart';
import 'package:latihan1_11pplg2/pages/football_player.dart';

class ExamplePage extends StatelessWidget {
 ExamplePage({super.key});

  final controller = Get.find<ExampleController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context,constraints){
          controller.updatelayout(constraints);
          return Obx(()=> controller.isMobile.value ? FootballPlayer() : FootballPlayerWide());
        }
      ),
    );
  }
}