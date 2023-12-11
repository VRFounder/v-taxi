import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
