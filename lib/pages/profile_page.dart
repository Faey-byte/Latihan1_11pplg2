import 'package:flutter/material.dart';

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
              backgroundImage: AssetImage('assets/profile.png'), // pastikan ada gambar di assets
            ),
            SizedBox(height: 20),
            Text(
              "User Name",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text("user@email.com"),
          ],
        ),
      ),
    );
  }
}
