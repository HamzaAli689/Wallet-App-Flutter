import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Etextfields extends StatefulWidget {
  Etextfields({super.key,});

  @override
  State<Etextfields> createState() => _EtextfieldsState();
}

class _EtextfieldsState extends State<Etextfields> {

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: TextFormField(
        decoration:  InputDecoration(
          prefixIcon: Icon(Icons.email_outlined,color: customPurple,),
          hintText: "Hamzaalivr33@gmail.com",
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
          filled: true,
          fillColor: fillcolor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        ),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16, // Font size for user input
        ),
      ),
    );
  }
}
