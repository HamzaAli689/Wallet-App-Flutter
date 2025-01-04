import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:wallet_app/constants/colors.dart';

import '../../widgets/SendContainer.dart';
import '../../widgets/profiletile.dart';
import '../../widgets/upperHomeContainer.dart';
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
              child:  Upperhomecontainer(),
            ),
            Container(
              width: size.width,
              child: Column(
                children: [
                  Text("Benificiaries")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
