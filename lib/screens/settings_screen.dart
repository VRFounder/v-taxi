import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Settings Page',
        style: TextStyle(
          fontSize: 24,
          color: Color.fromRGBO(127, 132, 147, 1.0),
        ),
      ),
    );
  }
}
