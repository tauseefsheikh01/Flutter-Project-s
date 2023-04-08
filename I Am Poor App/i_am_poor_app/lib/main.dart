import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text('I Am Poor App'),
            backgroundColor: const Color.fromARGB(255, 84, 186, 234)),
        backgroundColor: const Color.fromARGB(255, 48, 138, 171),
        body: Center(
          child: SizedBox(
            height: 400,
            child: Image.asset(
              'asset/image/poor.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    ),
  );
}
