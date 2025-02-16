import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// Widget ini merupakan dasar dari aplikasi Anda.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //Judul atau Title dari App
      title: 'Nextgen App',

      //Tema dari App
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.dark(),

      // Halaman Pertama dari App
      home: const HomePage(),
    );
  }
}

//List ukuran card
// Define the list with explicit typing
List<StaggeredTile> _cardTile = const [
  StaggeredTile.count(2, 3),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 3),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 3),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 3),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 3),
  StaggeredTile.count(2, 2),
];

// Define the list with explicit typing
List<Widget> _listTile = const [
  BackGroundTile(backgroundColor: Colors.red, icondata: Icons.home),
  BackGroundTile(backgroundColor: Colors.orange, icondata: Icons.ac_unit),
  BackGroundTile(backgroundColor: Colors.pink, icondata: Icons.landscape),
  BackGroundTile(backgroundColor: Colors.green, icondata: Icons.portrait),
  BackGroundTile(
      backgroundColor: Colors.deepPurpleAccent, icondata: Icons.music_note),
  BackGroundTile(backgroundColor: Colors.blue, icondata: Icons.access_alarms),
  BackGroundTile(
      backgroundColor: Colors.indigo, icondata: Icons.satellite_outlined),
  BackGroundTile(backgroundColor: Colors.cyan, icondata: Icons.search_sharp),
  BackGroundTile(
      backgroundColor: Colors.yellowAccent, icondata: Icons.adjust_rounded),
  BackGroundTile(
      backgroundColor: Colors.deepOrange, icondata: Icons.attach_money),
];


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nextgen App"),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        staggeredTiles: _cardTile,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: _listTile,
      ),
    );
  }
}

class BackGroundTile extends StatelessWidget {
  final Color backgroundColor;
  final IconData icondata;

  const BackGroundTile(
      {super.key, required this.backgroundColor, required this.icondata});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Icon(icondata, color: Colors.white),
    );
  }
}