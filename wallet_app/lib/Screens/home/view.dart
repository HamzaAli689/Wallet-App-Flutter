import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_app/constants/colors.dart';

import 'logic.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final HomeLogic logic = Get.put(HomeLogic());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * .40,
              decoration: BoxDecoration(
                color: customPurple,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),

                        ),
                        child: ClipOval(child: Image.asset("assets/profile1.jpeg",width: 50,height: 50,fit: BoxFit.fill,)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: size.width,
            ),
          ],
        ),
      ),
    );
  }
}
