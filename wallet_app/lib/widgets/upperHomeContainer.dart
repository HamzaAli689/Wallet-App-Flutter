import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wallet_app/widgets/profiletile.dart';

import 'SendContainer.dart';

class Upperhomecontainer extends StatelessWidget {
  const Upperhomecontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Profiletile(),
          Padding(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(5),
                Text("Current Balance",style: TextStyle(
                    color: Colors.white54,
                    fontSize: 12
                ),),
                Gap(5),
                Text("\$250,000.000",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,letterSpacing: 2
                ),),
                Gap(5),
                Container(
                  height: 30,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text("3217653911",style: TextStyle(
                      color: Colors.white,fontSize: 18,
                    ),),
                  ),
                ),
                Gap(15),
                Sendcontainer(),

              ],
            ),
          )
        ],
      ),
    );
  }
}
