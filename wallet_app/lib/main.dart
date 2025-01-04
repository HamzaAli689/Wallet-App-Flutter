import 'package:flutter/material.dart';
import 'package:wallet_app/size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Container(

        color: Colors.red,
        child: Container(
          width: getRelativeHeight(0.11),
          height: getRelativeHeight(0.11),
          decoration: BoxDecoration(
            border: Border.all(
                width: 15,
                color: Colors.white,
            style: BorderStyle.solid,
          ),
        ),
      ),)
    );
  }
}


