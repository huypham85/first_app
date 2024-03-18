import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceRoll = 2;

  void onPressed() {
    setState(() {
      activeDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$activeDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 50,
        ),
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 30),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 30),
          ),
          child: const Text("Roll dice"),
        ),
      ],
    );
  }
}
