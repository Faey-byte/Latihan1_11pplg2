import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/login_controller.dart';

class ProfilePage extends StatelessWidget {
 const ProfilePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assete/cunha.png'), 
            ),
            SizedBox(height: 20),
            Text(
              "Agustinus Galih Gumilang",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text("agustinus@email.com"),
          ],
        ),
      ),
    );
  }
}
