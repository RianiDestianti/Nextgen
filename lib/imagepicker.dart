import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: const GalleryAccess(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GalleryAccess extends StatefulWidget {
  const GalleryAccess({super.key});

  @override
  State createState() => _GalleryAccessState();
}

class _GalleryAccessState extends State {
  File? galleryFile;
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Akses Kamera dan Gallery'),
        backgroundColor: Colors.blue,
        actions: const [],
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  child: const Text('Pilih Gambar dari Gallery atau Kamera'),
                  onPressed: () {
                    _showPicker(context: context);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 200.0,
                  width: 300.0,
                  child: galleryFile == null
                      ? const Center(
                          child: Text('Maaf kamu belum memilih gambar!!'))
                      : Center(child: Image.file(galleryFile!)),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  child: Text(
                    "Nextgen Tutorial",
                    textScaleFactor: 3,
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  void _showPicker({
    required BuildContext context,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Photo Library'),
                onTap: () {
                  getImage(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () {
                  getImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future getImage(
    ImageSource img,
  ) async {
    final pickedFile = await picker.pickImage(source: img);
    XFile? xfilePick = pickedFile;
    setState(
      () {
        if (xfilePick != null) {
          galleryFile = File(pickedFile!.path);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Nothing is selected'),
            ),
          );
        }
      },
    );
  }
}