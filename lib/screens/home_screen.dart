import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "V-Taxi",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(43, 47, 51, 1.0),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.centerLeft,
            colors: [
              Color.fromRGBO(43, 47, 51, 1.0),
              Color.fromRGBO(16, 17, 19, 1.0),
            ],
            radius: 2,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(43, 47, 51, 1.0),
        currentIndex: 2,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        selectedFontSize: 16,
        showUnselectedLabels: false,
        unselectedItemColor: const Color.fromRGBO(127, 132, 147, 1.0),
        items: const [
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
        ],
      ),
    );
  }
}
