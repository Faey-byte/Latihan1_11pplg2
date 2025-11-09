import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../controllers/login_api_controller.dart';

class LoginAPIPage extends StatelessWidget {
 final LoginAPIController controller = Get.find<LoginAPIController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Tes API"),),
      body: Padding(padding: const EdgeInsets.all(20),
      child:  Column( children: [
        TextField(
             decoration: const InputDecoration(labelText: "Username"),
              onChanged: (val) => controller.username.value = val,
        ),
        TextField(
          decoration: const InputDecoration(labelText: "Password"),
          obscureText: true,
          onChanged: (val) => controller.password.value = val,
        ),
        const SizedBox(height: 20,),
        Obx((){
          return controller.isLoading.value
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () => controller.login(),
                      child: const Text("Login"),
                    );
        })
      ],),
      ),
    );
  }
}