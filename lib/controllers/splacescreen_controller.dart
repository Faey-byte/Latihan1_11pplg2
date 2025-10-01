import 'package:get/get.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplacescreenController extends GetxController{

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checklogin();
  }

  checklogin()async{
    
    final prefs = await SharedPreferences.getInstance();
    await Future.delayed(Duration(seconds: 3));
    if(prefs.getString("username") != null){
      Get.offAllNamed(AppRoutes.bottomnav);
    }else{
//route ke login karena kosong
Get.offAllNamed(AppRoutes.LoginPage);
    }
  }
}