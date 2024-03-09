import 'package:flutter/material.dart';
import 'package:whatsapp/Calculator.dart';
// import 'package:whatsapp/pagetwo.dart';
import 'package:whatsapp/pubdef.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
 primarySwatch: Colors.teal
      ),
      home: Calculator(),
    );
  }
}

