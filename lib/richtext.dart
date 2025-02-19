// berhasil


import 'package:flutter/material.dart';

// fungsi untuk mentrigger proses build aplikasi flutter
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// Widget ini adalah akar dari aplikasi Anda
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClipOval',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePAGE(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePAGE extends StatefulWidget {
  const MyHomePAGE({Key? key}) : super(key: key);

  @override
  State createState() => _MyHomePAGEState();
}

class _MyHomePAGEState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nextgen Tutorial'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: RichText(
        // Mengontrol visual overflow
        overflow: TextOverflow.clip,

        // Mengontrol cara teks harus diselaraskan secara horizontal
        textAlign: TextAlign.end,

        // Mengontrol arah teks
        textDirection: TextDirection.rtl,

        // Apakah teks harus dipisahkan pada soft line breaks
        softWrap: true,

        // Jumlah maksimum baris yang harus dicakup oleh teks
        maxLines: 1,
        textScaleFactor: 1,
        text: TextSpan(
          text: 'Halo ',
          style: DefaultTextStyle.of(context).style,
          children: const [
            TextSpan(
                text: 'Guys', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      )),
      backgroundColor: Colors.lightBlue[50],
    );
  }
}

class MyClip extends CustomClipper {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(0, 0, 100, 100);
  }

  @override
  bool shouldReclip(oldClipper) {
    return false;
  }
}