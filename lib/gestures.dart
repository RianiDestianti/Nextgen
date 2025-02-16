import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Gestures';

    return const MaterialApp(
      title: title,
      home: MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nextgen Tutorial'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(child: MyButton()),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    showSnackbar(Color color, String message) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: color,
          content: Text(message),
        ),
      );
    }

    return GestureDetector(
      // untuk menampilkan snackbar ketika melakukan gesture
      onTap: () {
        showSnackbar(Colors.black, 'Kamu telah melakukan Tapped pada Button');
      },
      onDoubleTap: () {
        showSnackbar(
            Colors.purple, 'Kamu telah melakukan Double Tapped pada Button');
      },
      onLongPress: () {
        showSnackbar(
            Colors.green, 'Kamu telah melakukan Long Press pada Button');
      },
      // Button Tap
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const Text('Tap Button'),
      ),
    );
  }
}