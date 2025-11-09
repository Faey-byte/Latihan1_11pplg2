import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/login_model.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';

class LoginAPIController extends GetxController {
  var isLoading = false.obs;
  var username = ''.obs;
  var password = ''.obs;

  Future<void> login() async {
    isLoading.value = true;
    try {
      var url = Uri.parse("https://mediadwi.com/api/latihan/login");
      var response = await http.post(url, body: {
        "username": username.value,
        "password": password.value,
      });

      if (response.statusCode == 200) {
        final loginResponse = loginModelFromJson(response.body);

        // tampilkan pesan dari server apa adanya
        Get.snackbar(
          loginResponse.status ? "Sukses" : "Gagal",
          loginResponse.message,
          snackPosition: SnackPosition.BOTTOM,
        );

        if (loginResponse.status && loginResponse.token.isNotEmpty) {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString("token", loginResponse.token);

          // arahkan ke halaman football
          Get.offAllNamed(AppRoutes.footballPage);
        }
      } else {
        Get.snackbar(
          "Error",
          "Server error: ${response.statusCode}",
          snackPosition: SnackPosition.TOP,
        );
      }
    } catch (e) {
      Get.snackbar(
        "Exception",
        e.toString(),
        snackPosition: SnackPosition.TOP,
      );
    } finally {
      isLoading.value = false;
    }
  }
}
