import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {required this.startColor,
      required this.endColor,
      required this.begin,
      required this.end,
      super.key});
  final Color startColor;
  final Color endColor;
  final Alignment begin;
  final Alignment end;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            startColor,
            endColor,
          ],
          begin: begin,
          end: end,
        ),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }

}
