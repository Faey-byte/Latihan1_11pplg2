import 'package:get/get.dart';
import 'package:latihan1_11pplg2/pages/calculate_page.dart';
import 'package:latihan1_11pplg2/pages/football_player.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.calculatePage,
      page: () => CalculatePage(),
    ),
    GetPage(
      name: AppRoutes.footballPage,
      page: () => FootballPlayer(),
    ),
  ];
}

