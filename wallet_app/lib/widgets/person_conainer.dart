import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constants/colors.dart';

class PersonContainer extends StatelessWidget {
  final String title;
  final String image;
  const PersonContainer ({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 2,
      child: Container(
        height: 70,
        width: size.width * .78,
        decoration: BoxDecoration(
          color: fillcolor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: ListTile(
            leading: Container(
              height: 55,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
              child: ClipOval(
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  )),
            ),
            title: Text(title,style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),),
            subtitle: Row(
              children: [
                Text("Phone",style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),),
                Gap(5),
                Text("3217653911",style: TextStyle(
                  color: customPurple,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),),
              ],
            ),
            trailing: Icon(Icons.more_horiz),
          ),
        ),
      ),
    );
  }
}
