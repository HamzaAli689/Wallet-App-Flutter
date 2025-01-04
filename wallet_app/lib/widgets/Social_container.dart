import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constants/colors.dart';

class GoogleApple extends StatelessWidget {
  final String image;
  final String title;
  const GoogleApple({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 5,
      child: InkWell(
        onTap: (){},
        child: Container(
          height: 50,
          width: size.width * .43,
          decoration: BoxDecoration(
              color: fillcolor,
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                width: 35,
                height: 35,
              ),
              Gap(5),
              Text(
                title,
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 15, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
