import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Screens/Spalsh Screen/Splash screen.dart';
import 'Screens/login/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
     // home: SplashScreen(),
    );
  }
}


