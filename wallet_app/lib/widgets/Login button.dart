import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_app/Screens/home/view.dart';

import '../constants/colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 5,
      child: InkWell(
          onTap: () {
            Get.to(() =>  HomePage());
            },
          child: Container(
            height: 50,
            width: size.width,
            decoration: BoxDecoration(
                color: customPurple,
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Text(
                "LOGIN",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
          )),
    );
  }
}
