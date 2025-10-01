import 'package:get/get.dart';
import 'package:latihan1_11pplg2/bindings/contact_binding.dart';
import 'package:latihan1_11pplg2/bindings/login_binding.dart';
import 'package:latihan1_11pplg2/bindings/splacescreen_binding.dart';
import 'package:latihan1_11pplg2/bottom_nav.dart';
import 'package:latihan1_11pplg2/pages/calculate_page.dart';
import 'package:latihan1_11pplg2/pages/contact_page.dart';
import 'package:latihan1_11pplg2/pages/football_player.dart';
import 'package:latihan1_11pplg2/pages/login_page.dart';
import 'package:latihan1_11pplg2/pages/profile_page.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.calculatePage, page: () => CalculatePage()),
    GetPage(name: AppRoutes.footballPage, page: () => FootballPlayer()),
    GetPage(name: AppRoutes.bottomnav, page: () => BottomNav()),
    GetPage(name: AppRoutes.profilePage, page: () => ProfilePage()),
    GetPage(name: AppRoutes.loginPage, page:() => LoginPage(), binding: LoginBinding()),
    GetPage(name: AppRoutes.splacescreen, page:() => LoginPage(), binding: SplacescreenBinding()),
     GetPage(name: AppRoutes.contactPage, page:() => ContactPage(), binding: ContactBinding()),
  ];
}
