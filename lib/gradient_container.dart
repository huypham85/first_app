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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-2.png',
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
        ),
      ),
    );
  }

  void onPressed() {
    // diceImage = 'assets/images/dice-4.png';
  }
}
