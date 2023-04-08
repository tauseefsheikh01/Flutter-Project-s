import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text('I am Rich'),
            backgroundColor: Colors.black26),
        backgroundColor: const Color.fromARGB(255, 238, 186, 247),
        body: Center(
          child: SizedBox(
            height: 400,
            child: Image.asset(
              'asset/image/diamond.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    ),
  );
}
