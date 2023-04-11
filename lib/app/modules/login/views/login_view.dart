import 'package:dailymood/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          children: [
            SizedBox(height: 30),
            Container(
              alignment: Alignment.topCenter,
              height: 95,
              child: Image.asset(
                "assets/logo/logo-login.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 25),
            const Text(
              "Rekam Mood Harian Anda",
              maxLines: 5,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            const Text(
              "Dengan DailyMood, anda dapat merekam mood anda dengan mudah",
              maxLines: 5,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              height: 150,
              child: Image.asset(
                "assets/logo/fitur/fitur-login.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 80),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME), 
              child: Text(
                "LANJUTKAN",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 27,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[500],
                fixedSize: Size(100, 50)
              ),
            ),
          ],
          ),
        )
    );
  }
}
