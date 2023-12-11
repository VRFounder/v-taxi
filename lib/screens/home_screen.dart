import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/gradient_container.dart';
import '../widgets/bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: GradientContainer(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
