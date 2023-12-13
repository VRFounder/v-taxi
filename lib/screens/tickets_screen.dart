import 'package:flutter/material.dart';

class TicketsScreen extends StatefulWidget {
  const TicketsScreen({Key? key}) : super(key: key);

  @override
  State<TicketsScreen> createState() => _TicketsScreenState();
}

class _TicketsScreenState extends State<TicketsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Tickets Page',
        style: TextStyle(
          fontSize: 24,
          color: Color.fromRGBO(127, 132, 147, 1.0),
        ),
      ),
    );
  }
}
