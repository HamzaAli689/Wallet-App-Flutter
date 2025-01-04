import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constants/colors.dart';

class Sendcontainer extends StatelessWidget {
  const Sendcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          height: 40,
          width: 110,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_right_alt,color: customPurple,
                size: 40,
              ),
              Gap(6),
              Text("Send",style: TextStyle(
                  color: customPurple,fontSize: 18
              ),)
            ],
          ),
        ),
        Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white,borderRadius: BorderRadius.circular(40),
            ),
            child: Icon(Icons.more_horiz,color: customPurple,)
        )
      ],
    );
  }
}
