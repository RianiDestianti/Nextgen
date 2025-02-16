// Contoh 1
import 'package:flutter/material.dart';

void main() {
  runApp(ngtApp()); 
}

MaterialApp ngtApp() {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Nextgen Tutorial'),
      ), 
      body: const Center(
        child: Text(
          'Nextgen Tutorial',
          style: TextStyle(fontSize: 24),
        ), 
      ), 
    ), 
    debugShowCheckedModeBanner: false,
  );
}