// berhasil
// satu contoh

import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExpansionTileCard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Nextgen Tutorial'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState(); // Perbaikan di sini
}

class _MyHomePageState extends State<MyHomePage> { // Perbaikan di sini
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey(); // Tipe yang benar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), // Menggunakan widget.title dengan benar
      ),
      body: ExpansionTileCard(
        key: cardA,
        leading: const CircleAvatar(child: Text('A')),
        title: const Text('Tap untuk Expand!'),
        subtitle: const Text('Terdapat Logo Nextgen di dalamnya.'),
        children: [
          const Divider(
            thickness: 1.0,
            height: 1.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Image.asset('assets/apa.jpg')),
          ),
        ],
      ),
    );
  }
}
