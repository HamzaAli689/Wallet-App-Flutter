import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Screens/Spalsh Screen/Splash screen.dart';
import 'Screens/home/view.dart';
import 'Screens/login/view.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //home: LoginPage(),
      home: SplashScreen(),
    );
  }
}


