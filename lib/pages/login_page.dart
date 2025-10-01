import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/login_controller.dart';
import 'package:latihan1_11pplg2/widget/button.dart';
import 'package:latihan1_11pplg2/widget/custom_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
final controller = Get.find<LoginController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LOGIN PAGE"),),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
             Custombutton(text: "Login", onPressed: (){}),
            ],
          ),
        ),
      ),
    );
  }
}