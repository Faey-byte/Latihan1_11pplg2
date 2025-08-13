import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/calculator_controler.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';
import 'package:latihan1_11pplg2/widget/input_field.dart';
import 'package:latihan1_11pplg2/widget/button.dart';


class CalculatePage extends StatelessWidget {
  CalculatePage({super.key});
  final CalculatorControler controller = Get.put(CalculatorControler());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kalkulator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
           
            InputField(label: "Angka 1", controller: controller.txtangka1),
            InputField(label: "Angka 2", controller: controller.txtangka2),

            const SizedBox(height: 16),

            Row(
              children: [
                Custombutton(text: "+", onPressed: controller.tambah),
                const SizedBox(width: 8),
                Custombutton(text: "-", onPressed: controller.kurang),
              ],
            ),
            const SizedBox(height: 8),

            Row(
              children: [
                Custombutton(text: "×", onPressed: controller.kali),
                const SizedBox(width: 8),
                Custombutton(text: "÷", onPressed: controller.bagi),
              ],
            ),

            const SizedBox(height: 20),

            Obx(() => Text(
                  controller.txthasil.value.isEmpty
                      ? "Data yang dihasilkan"
                      : "Hasil: ${controller.txthasil.value}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                )),

            const SizedBox(height: 16),
            Row(
              children: [
                const SizedBox(width: 8),
                Custombutton(
                  text: "Go to FootballPage",
                  onPressed: () {
                    Get.toNamed(AppRoutes.footballPage);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
