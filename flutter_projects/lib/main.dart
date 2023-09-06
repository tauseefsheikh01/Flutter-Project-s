import 'package:flutter/material.dart';
import 'package:flutter_projects/phone.dart';
import 'package:flutter_projects/verify.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'phone',
    debugShowCheckedModeBanner: false,
    routes: {
      'phone': (context) => const MyPhone(),
      'verify': (context) => const MyVerify()
    },
  ));
}
