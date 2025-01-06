import 'package:flutter/material.dart';

class Profiletile extends StatelessWidget {
  const Profiletile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
        ),
        child: ClipOval(
            child: Image.asset(
              "assets/profile1.jpeg",
              width: 40,
              height: 40,
              fit: BoxFit.fill,
            )),
      ),
      title: Text("Hi, Hamza",
        style: TextStyle(color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
        ),
      ),
      trailing: Icon(Icons.notifications,color: Colors.white,
        size: 20,
      ),
    );
  }
}
