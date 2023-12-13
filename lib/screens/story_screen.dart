import 'package:flutter/material.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({Key? key}) : super(key: key);

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Story Page',
        style: TextStyle(
          fontSize: 24,
          color: Color.fromRGBO(127, 132, 147, 1.0),
        ),
      ),
    );
  }
}
