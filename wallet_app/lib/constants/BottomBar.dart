import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Tab ${_currentIndex + 1}',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(16), // Margin for rounded edge
        decoration: BoxDecoration(
          color: Colors.purple.shade100, // Background color
          borderRadius: BorderRadius.circular(30), // Rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(0, 3),
            ),
          ],
          gradient: LinearGradient(
            colors: [Color(0xFFB388FF), Color(0xFFE1BEE7)], // Gradient
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildNavItem(Icons.dashboard, "Dashboard", 0),
            buildNavItem(Icons.credit_card, "Card", 1),
            buildNavItem(Icons.support, "Support", 2),
            buildNavItem(Icons.attach_money, "Currency", 3),
            buildNavItem(Icons.person, "Profile", 4),
          ],
        ),
      ),
    );
  }

  Widget buildNavItem(IconData icon, String label, int index) {
    bool isSelected = _currentIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: isSelected
            ? BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.purple, // Active icon background
        )
            : null,
        child: Icon(
          icon,
          color: isSelected ? Colors.white : Colors.purple.shade300, // Icon color
          size: 28,
        ),
      ),
    );
  }
}