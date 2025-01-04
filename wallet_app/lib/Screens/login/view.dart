import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final LoginLogic logic = Get.put(LoginLogic());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/logoB.png",
                height: 40,
                width: 40,
              ),
              Text(
                "PALACE",
                style: TextStyle(color: Color(0xFF6F00FF)),
              )
            ],
          )
        ],
      ),
    );
  }
}
