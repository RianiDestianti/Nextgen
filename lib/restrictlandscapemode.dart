import 'package:flutter/material.dart';
//Diimport agar dapat menggunkan SystemChrome
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Nextgen Tutorial'),
        ),
        body: const Center(
          child: Text(
            'Aplikasi ini tidak bisa di rotasi ke mode landscape',
            style: TextStyle(color: Colors.blue, fontSize: 17),
          ),
        ),
      ),
    );
  }
}