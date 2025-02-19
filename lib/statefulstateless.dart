// berhasil
// statful


// import 'package:flutter/material.dart';

// //Fungsi ini memulai proses build dari aplikasi flutter.
// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: const Color.fromARGB(255, 230, 255, 201),
//         appBar: AppBar(
//           leading: const Icon(Icons.menu),
//           backgroundColor: Colors.purple,
//           title: const Text(
//             "Nextgen Tutorial",
//             textAlign: TextAlign.start,
//           ),
//         ), // AppBar
//         body: const Center(
//           child: Text(
//             "Stateless Widget",
//             style: TextStyle(color: Colors.black, fontSize: 30),
//           ),
//         ), // Container
//       ), // Scaffold
//     ); // MaterialApp
//   }
// }

// stateful
import 'package:flutter/material.dart';

//Fungsi ini memulai proses build dari aplikasi flutter.
void main() => runApp(const MyApp());

// StatefulWidget
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[100],
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          backgroundColor: Colors.purple,
          title: const Text(
            "Nextgen Tutorial",
            textAlign: TextAlign.start,
          ),
        ), // AppBar
        body: const Center(
          child: Text(
            "StateFul Widget",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ), // Container
      ), // Scaffold
    ); // MaterialApp
  }
}