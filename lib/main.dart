import 'package:flutter/material.dart';
import 'package:flutter_application_1/navigasi.dart';

void main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: navigasi(),
    );
  }
}