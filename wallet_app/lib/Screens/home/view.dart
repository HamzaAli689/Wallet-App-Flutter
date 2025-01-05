import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:wallet_app/constants/colors.dart';

import '../../widgets/SendContainer.dart';
import '../../widgets/Transaction_Container.dart';
import '../../widgets/person_conainer.dart';
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

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              width: size.width,
              height: size.height * .40,
              decoration: BoxDecoration(
                color: customPurple,
              ),
              child: Upperhomecontainer(),
            ),
            Container(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Benificiaries",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                    Gap(10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          PersonContainer(
                            title: 'Hamza Ali',
                            image: 'assets/first.jpeg',
                          ),
                          Gap(10),
                          PersonContainer(
                            title: 'Adrees King',
                            image: 'assets/second.jpeg',
                          ),
                          Gap(10),
                          PersonContainer(
                            title: 'Sufiyan',
                            image: 'assets/third.jpeg',
                          ),
                          Gap(10),
                        ],
                      ),
                    ),
                    Gap(5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transactions",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    Gap(5),
                    TransactionContainer(
                      title: 'Allied Bank',
                      subtitle: '+\$40.00',
                      image: 'assets/allied.jpeg',
                      date: 'Jan 4, 2025',
                    ),
                    Gap(5),
                    TransactionContainer(
                      title: 'Meezan Bank',
                      subtitle: '+\$56.00',
                      image: 'assets/meezan.jpeg',
                      date: 'Jan 3, 2025',
                    ),
                    Gap(5),
                    TransactionContainer(
                      title: 'HBL Bank',
                      subtitle: '+\$45.00',
                      image: 'assets/hbl.jpeg',
                      date: 'Jan 2, 2025',
                    ),
                    Gap(5),
                    TransactionContainer(
                      title: 'UBL Bank',
                      subtitle: '+\$96.00',
                      image: 'assets/ubl.jpeg',
                      date: 'Jan 1, 2025',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
