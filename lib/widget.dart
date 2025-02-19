// berhasil
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Nextgen Tutorial"),
        ), // AppBar
        body: const Center(
          child: Text("Halo Guys!!"),
        ), // Container
      ), // Scaffold
    ); // MaterialApp
  }
}