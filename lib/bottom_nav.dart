import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/routes.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });

    if (index == 0) {
      Get.toNamed(AppRoutes.calculatePage);
    } else if (index == 1) {
      Get.toNamed(AppRoutes.footballPage);
    } else if (index == 2) {
      Get.toNamed(AppRoutes.profilePage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("Pilih menu di bawah",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Calculator',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer),
            label: 'Player',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
