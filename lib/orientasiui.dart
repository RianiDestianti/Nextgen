import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Nextgen Tutorial';

    return const MaterialApp(
      title: appTitle,
      home: OrientationList(
        title: appTitle,
      ),
    );
  }
}

class OrientationList extends StatelessWidget {
  final String title;

  const OrientationList({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), backgroundColor: Colors.blue),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            //Grid dengan 3 kolom untuk mode portrait dan 4 kolom untuk mode landscape
            crossAxisCount: orientation == Orientation.portrait ? 3 : 4,

            // random item generator
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  'A $index',
style: Theme.of(context).textTheme.headlineMedium,
                ),
              );
            }),
          );
        },
      ),
    );
  }
}