import 'package:flutter/material.dart';
import 'package:roll_dice/pages/dice_roller.dart';

var b = Alignment.topLeft;
var e = Alignment.bottomRight;

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  GradientContainer({super.key});

  var color1 = Colors.deepPurple;
  var color2 = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: b,
          end: e,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

class T extends StatelessWidget {
  const T(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 25.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
