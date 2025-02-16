import 'package:flutter/material.dart';

void main() {
  runApp(const NGTapp());
}

class NGTapp extends StatelessWidget {
  const NGTapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nextgen Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        useMaterial3: false, // Matikan Material 3 agar warna AppBar mengikuti primarySwatch
      ),
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Nextgen Tutorial'),
titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
          backgroundColor: Colors.purple, // Paksa warna AppBar jadi ungu
        ),
      ),
    );
  }
}
