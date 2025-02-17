import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  if (response.statusCode == 200) {
    return Album.fromJson(json.decode(response.body));
  } else {
    throw Exception('Loading album failed!');
  }
}

Future updateAlbum(String title) async {
  final http.Response response = await http.put(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': title,
    }),
  );
  if (response.statusCode == 200) {
    return Album.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to update the album!');
  }
}

class Album {
  final int id;
  final String title;
  Album({required this.id, required this.title});
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['id'],
      title: json['title'],
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  final TextEditingController _controller = TextEditingController();
  late Future _futureAlbum;
  @override
  void initState() {
    super.initState();
    _futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Update Data',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Nextgen Tutorial'),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder(
            future: _futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Judul Album Saat ini'),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.primaries[
                              Random().nextInt(Colors.primaries.length)],
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Center(
                          child: Text(
                            snapshot.data?.title ?? 'null',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: TextField(
                          controller: _controller,
                          decoration: const InputDecoration(
                              hintText: 'Masukkan judul album yang diinginkan'),
                        ),
                      ),
                      ElevatedButton(
                        child: const Text('Update Data'),
                        onPressed: () {
                          setState(() {
                            _futureAlbum = updateAlbum(_controller.text);
                            _controller.text = '';
                          });
                        },
                      ),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
              }
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}