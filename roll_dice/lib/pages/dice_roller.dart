import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  var score = 0;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      score = score + currentDiceRoll;
    });
  }

  void restart() {
    setState(() {
      score = 0;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'lib/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
        const SizedBox(
          height: 50.0,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            "Your score : $score",
            style: const TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
        TextButton.icon(
          onPressed: restart,
          icon: const Icon(Icons.replay),
          label: const Text("Restart"),
        )
      ],
    );
  }
}
