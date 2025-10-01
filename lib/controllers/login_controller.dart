import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController{
  final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

  login()async{
    if(usernameController.text.toString() == "admin" && passwordController.text.toString() == "asd"){
      final prefs = await SharedPreferences.getInstance();
      prefs.setString("username",usernameController.text.toString());
      Get.offAllNamed(AppRoutes.bottomnav);
    }else{
      Get.snackbar("Error", "Invalid Username or password");
    }
  }

}