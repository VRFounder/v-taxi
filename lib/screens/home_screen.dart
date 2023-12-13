import 'package:flutter/material.dart';
import 'package:v_taxi/screens/order_screen.dart';
import 'package:v_taxi/screens/profile_screen.dart';
import 'package:v_taxi/screens/story_screen.dart';
import 'package:v_taxi/screens/tickets_screen.dart';
import '../widgets/app_bar.dart';
import '../widgets/gradient_container.dart';
import '../widgets/bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 2;
  final List<Widget> _children = [
    const ProfileScreen(),
    const TicketsScreen(),
    const OrderScreen(),
    const StoryScreen(),
    const TicketsScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
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
        child: _children[_currentIndex],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTabSelected: onTabTapped,
      ),
    );
  }
}
