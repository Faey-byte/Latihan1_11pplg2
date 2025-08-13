import 'package:flutter/material.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String statusLogin = "login status";
  TextEditingController txtusername = TextEditingController();
  TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LOGIN PAGE")),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello Welcome To Our Application",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman',
                color: Colors.purple,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 8),
            Text("Please fill username and password below"),

            Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Image.asset(
                  'assete/tutwuri.png',
                  width: 90,
                  height: 90,
                ),
              ),
            ),

            SizedBox(height: 12),

            TextField(
              controller: txtusername,
              decoration: InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 12),

            TextField(
              controller: txtpassword,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (txtusername.text == "admin" &&
                      txtpassword.text == "admin") {
                    setState(() {
                      statusLogin = "sukses login";
                    });
                  } else {
                    setState(() {
                      statusLogin = "gagal login";
                    });
                  }
                  print("status " + statusLogin);
                },
                child: Text("Login"),
              ),
            ),

            SizedBox(height: 8),
            Text(statusLogin),

            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const RegisterPage()),
                  );
                },
                child: Text("Dont have any account? register here!"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
