import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 46, 0, 65),
          Color.fromARGB(255, 36, 2, 75)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: const T(),
    );
  }
}

class T extends StatelessWidget {
  const T({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "To the TOP InshAllah",
        style: TextStyle(fontSize: 25.0, color: Colors.white),
      ),
    );
  }
}
