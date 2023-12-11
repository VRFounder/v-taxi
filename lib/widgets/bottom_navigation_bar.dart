import 'package:flutter/material.dart';
import '../models/bottom_nav_item.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color.fromRGBO(43, 47, 51, 1.0),
      currentIndex: 2,
      iconSize: 30,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      selectedFontSize: 16,
      showUnselectedLabels: false,
      unselectedItemColor: const Color.fromRGBO(127, 132, 147, 1.0),
      items: buildBottomNavBarItems(),
    );
  }

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return const [
      BottomNavigationBarItem(
        icon: Icon(Icons.person_outline),
        label: "Order",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.rate_review_outlined),
        label: "Tickets",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.local_taxi_outlined),
        label: "Order",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.history_outlined),
        label: "History",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings_outlined),
        label: "Settings",
      ),
    ];
  }
}
