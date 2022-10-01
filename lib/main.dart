import 'package:flutter/material.dart';
import 'package:tes/controllers/user_controller.dart';
import 'package:tes/pages/home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(home: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    UserController controller = Get.put(UserController());

    return Scaffold(
      body: HomePage(),
    );
  }
}
