// // belum berhasil
// // 3 contoh

// // Contoh 1
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


// // contoh 2
// // import "package:flutter/material.dart";

// // void main() {
// //   runApp(const MyApp()); 
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: const Text("Nextgen Tutorial"),
// //           titleSpacing: 00.0,
// //           centerTitle: true,
// //           toolbarHeight: 60.2,
// //           toolbarOpacity: 0.8,
// //           shape: const RoundedRectangleBorder(
// //             borderRadius: BorderRadius.only(
// //                 bottomRight: Radius.circular(25),
// //                 bottomLeft: Radius.circular(25)),
// //           ),
// //           elevation: 0.00,
// //           backgroundColor: Colors.blueAccent[400],
// //         ), 
// //         body: const Center(
// //           child: Text(
// //             'Nextgen Tutorial',
// //             style: TextStyle(fontSize: 24),
// //           ),
// //         ), 
// //       ), 
// //       debugShowCheckedModeBanner: false, 
// //     );
// //   }
// // }

// // contoh 3
// // import "package:flutter/material.dart";
// // import 'package:flutter/services.dart';

// // void main() {
// //   runApp(ngtApp()); 
// // }

// // MaterialApp ngtApp() {
// //   return MaterialApp(
// //     home: Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Nextgen Tutorial"),
// //         actions: [
// //           IconButton(
// //             icon: const Icon(Icons.comment),
// //             tooltip: 'Comment Icon',
// //             onPressed: () {},
// //           ), 
// //           IconButton(
// //             icon: const Icon(Icons.settings),
// //             tooltip: 'Setting Icon',
// //             onPressed: () {},
// //           ), 
// //         ], 
// //         backgroundColor: Colors.blueAccent[400],
// //         elevation: 50.0,
// //         leading: IconButton(
// //           icon: const Icon(Icons.menu),
// //           tooltip: 'Menu Icon',
// //           onPressed: () {},
// //         ),
// //         systemOverlayStyle: SystemUiOverlayStyle.light,
// //       ), 
// //       body: const Center(
// //         child: Text(
// //           "Nextgen Tutorial",
// //           style: TextStyle(fontSize: 24),
// //         ), 
// //       ), 
// //     ), 
// //     debugShowCheckedModeBanner: false, 
// //   );
// // }