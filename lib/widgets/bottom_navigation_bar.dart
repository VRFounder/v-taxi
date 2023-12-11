import 'package:flutter/material.dart';
import '../models/bottom_nav_item.dart';

const backgroundColor = Color.fromRGBO(43, 47, 51, 1.0);
const unselectedItemColor = Color.fromRGBO(127, 132, 147, 1.0);
const selectedIndex = 2;
const iconSize = 30.0;
const selectedFontSize = 16.0;

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildBottomNavigationBar(buildBottomNavBarItems());
  }

  BottomNavigationBar buildBottomNavigationBar(List<BottomNavigationBarItem> items){
    return BottomNavigationBar(
      backgroundColor: backgroundColor,
      currentIndex: selectedIndex,
      iconSize: iconSize,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      selectedFontSize: selectedFontSize,
      showUnselectedLabels: false,
      unselectedItemColor: unselectedItemColor,
      items: items,
    );
  }

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return bottomNavItems.map((bottomNavItem) => BottomNavigationBarItem(
      icon: Icon(bottomNavItem.icon),
      label: bottomNavItem.label,
    )).toList();
  }
}