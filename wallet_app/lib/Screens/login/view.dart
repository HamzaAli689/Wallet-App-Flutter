import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:wallet_app/widgets/PTextfield.dart';

import '../../constants/colors.dart';
import '../../widgets/ETextfields.dart';
import '../../widgets/Login button.dart';
import '../../widgets/Social_container.dart';
import 'logic.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 25, left: 25),
          child: SizedBox(
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Gap(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/logoB.png",
                      height: 45,
                      width: 45,
                    ),
                    const Gap(5),
                    const Text(
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
                const Gap(10),
                const Text(
                  "Log in Account",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    decoration: TextDecoration.none,
                  ),
                ),
                const Gap(3),
                const Text(
                  "Welcome Back! Select method to Log in:",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 10,
                    decoration: TextDecoration.none,
                  ),
                ),
                const Gap(40),
                Etextfields(),
                const Gap(10),
                Ptextfields(),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      activeColor: const Color(0xFF6F00FF),checkColor: Colors.white,
                      value: rememberMe,
                      onChanged: (bool? value) {
                        setState(() {
                          rememberMe = value ?? false;
                        });
                      },
                    ),
                    const Text(
                      "Remember Me",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const Gap(15),
                const LoginButton(),
                const Gap(15),
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 15,
                    color: customPurple,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                ),
                const Gap(15),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    Text(
                      " OR ",
                      style: TextStyle(color: customPurple, fontSize: 12),
                    ),
                    const Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    )
                  ],
                ),
                const Gap(15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GoogleApple(image: 'assets/googleg.png', title: 'GOOGLE',),
                    GoogleApple(image: 'assets/apple.png', title: 'APPLE',),
                  ],
                ),
                const Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 14,
                          color: customPurple,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ), )
                  ],
                ),
                const Gap(30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
