import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(startColor: Colors.green, endColor: Colors.purple, begin: Alignment.bottomLeft, end: Alignment.topRight),
      ),
    ),
  );
}