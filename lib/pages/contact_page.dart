import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/Components/custom_button.dart';
import 'package:latihan1_11pplg2/Components/custom_input.dart';
import 'package:latihan1_11pplg2/controllers/contact_controller.dart';

class ContactPage extends StatelessWidget {
   ContactPage({super.key});

  final controller = Get.find<ContactController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact Page'),),
      body: Column(
      children: [
        CustomInput(label: 'Input Name', controller: controller.nameController, isNumber: false),
        CustomButton(myText: '+', myTextColor: Colors.grey, onPressed: () {
          controller.addName();
        }),
        Expanded(
          child: Obx(() {
            return ListView.builder(
              itemCount: controller.names.length,
              itemBuilder: (context,index) {
                final names = controller.names[index];
                return ListTile(
                  title: Text(names),
                );
              });
          })),
      ],
      ),
    );
  }
} 