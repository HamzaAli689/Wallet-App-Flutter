import 'package:flutter/material.dart';

class Ptextfields extends StatefulWidget {

  Ptextfields({super.key,});

  @override
  State<Ptextfields> createState() => _PtextfieldsState();
}

class _PtextfieldsState extends State<Ptextfields> {
  bool obscureText = true; // Changed to follow naming conventions (camelCase)

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.lock_outline_rounded,color: Color(0xFF6F00FF),),
          suffixIcon: IconButton(
            icon: Icon(
              obscureText ? Icons.visibility_off : Icons.visibility,
              color: const Color(0xFF6F00FF),
            ),
            onPressed: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
          ),
          hintText: "Password", // Use widget.hint to display dynamic hint text
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
          filled: true,
          fillColor: const Color(0xFFCCCCFF),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        ),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16, // Font size for user input
        ),
      ),
    );
  }
}
