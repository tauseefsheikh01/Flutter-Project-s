import 'package:flutter/material.dart';

import './gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 26, 5, 85),
          Color.fromARGB(255, 72, 11, 176),
        ),
      ),
    ),
  );
}
