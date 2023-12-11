import 'package:flutter/material.dart';

class BottomNavItem{
  final IconData icon;
  final String label;

  BottomNavItem(this.icon, this.label);
}

final List<BottomNavItem> bottomNavItems = [
  BottomNavItem(Icons.person_outline, "Order"),
  BottomNavItem(Icons.rate_review_outlined, "Tickets"),
  BottomNavItem(Icons.local_taxi_outlined, "Order"),
  BottomNavItem(Icons.history_outlined, "History"),
  BottomNavItem(Icons.settings_outlined, "Settings"),
  // Add as many as necessary
];