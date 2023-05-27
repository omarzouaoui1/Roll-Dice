import 'package:flutter/material.dart';
import 'package:roll_dice/pages/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}
