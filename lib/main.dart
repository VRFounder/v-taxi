import 'package:flutter/material.dart';
import 'package:v_taxi/screens/home_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
          duration: 3000,
          splash: Image.asset("assets/images/splash.png"),
          nextScreen: const HomeScreen(),
          splashTransition: SplashTransition.fadeTransition,
          centered: true,
          pageTransitionType: PageTransitionType.fade,
          backgroundColor: const Color.fromRGBO(42, 45, 50, 1.0)),
    );
  }
}
