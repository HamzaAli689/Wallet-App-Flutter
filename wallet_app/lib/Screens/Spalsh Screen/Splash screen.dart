import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../login/view.dart'; // Ensure this file and class exist

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() =>  LoginPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6F00FF),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            Column(
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 150,
                  height: 150,
                ),
                const Text(
                  'PALACE',
                  style: TextStyle(
                    fontSize: 40,
                    letterSpacing: 6,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Spacer(),
            CircularProgressIndicator(
              color: Colors.white,
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Made with ',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.black,
                    size: 18,
                  ),
                  Text(
                    ' by Hamza',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
