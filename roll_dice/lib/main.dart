import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 46, 0, 65),
              Color.fromARGB(255, 36, 2, 75)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: const Center(
            child: Text(
              "Top the TOP",
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
          ),
        ),
      ),
    ),
  );
}
