import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text(
        "V-Taxi",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: const Color.fromRGBO(43, 47, 51, 1.0),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
