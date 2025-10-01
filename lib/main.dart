import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/pages/calculate_page.dart';
import 'package:latihan1_11pplg2/routes/pages.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';
import 'pages/football_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculate Page',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: AppRoutes.contactPage,
      getPages: AppPages.pages,
    );
  }
}
