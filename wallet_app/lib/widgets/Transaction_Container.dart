import 'package:flutter/material.dart';

import '../constants/colors.dart';

class TransactionContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  final String image;
  const TransactionContainer({super.key, required this.title, required this.subtitle, required this.image, required this.date});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
      subtitle: Text(date,style: TextStyle(
        color: Colors.grey,
        fontSize: 12,
        fontWeight: FontWeight.w600,

      ),),
      trailing: Column(
        children: [
          Text(
            subtitle,
            style: TextStyle(
              color: customPurple,
              fontSize: 21,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          Text("10:50 AM",style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontWeight: FontWeight.w600,

          ),),
        ],
      ),
    );
  }
}
