import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:wallet_app/widgets/PTextfield.dart';

import '../../constants/colors.dart';
import '../../widgets/ETextfields.dart';
import 'logic.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginLogic logic = Get.put(LoginLogic());
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(right: 25, left: 25),
        child: Container(
          height: size.height,
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/logoB.png",
                    height: 45,
                    width: 45,
                  ),
                  Gap(5),
                  Text(
                    "PALACE",
                    style: TextStyle(
                      color: Color(0xFF6F00FF),
                      fontSize: 24,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
              Gap(20),
              Text(
                "Log in Account",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  decoration: TextDecoration.none,
                ),
              ),
              Gap(3),
              Text(
                "Welcome Back! Select method to Log in:",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 10,
                  decoration: TextDecoration.none,
                ),
              ),
              Gap(50),
              Etextfields(),
              Gap(10),
              Ptextfields(),
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    activeColor: Color(0xFF6F00FF),
                    value: rememberMe,
                    onChanged: (bool? value) {
                      setState(() {
                        rememberMe = value ?? false;
                      });
                    },
                  ),
                  Text(
                    "Remember Me",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Gap(20),
              InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: customPurple,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
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
              Gap(20),
              Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 15,
                  color: customPurple,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none,
                ),
              ),
              Gap(20),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Text(
                    " OR ",
                    style: TextStyle(color: customPurple, fontSize: 12),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  )
                ],
              ),
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: size.width * .43,
                    decoration: BoxDecoration(
                        color: fillcolor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/googleg.png",
                          width: 35,
                          height: 35,
                        ),
                        Gap(5),
                        Text(
                          "GOOGLE",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: size.width * .43,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
