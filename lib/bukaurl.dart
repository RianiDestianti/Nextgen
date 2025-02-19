// berhasil
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Fungsi yang mentrigger proses build aplikasi
void main() => runApp(const MyApp());

// Fungsi untuk membuka URL di browser
_launchURLBrowser() async {
  var url = Uri.parse("https://nextgen.co.id/");
  if (await canLaunchUrl(url)) {
    await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    );
  } else {
    debugPrint('Tidak bisa membuka laman $url');
  }
}

// Fungsi untuk membuka URL di webview aplikasi
_launchURLApp() async {
  var url = Uri.parse("https://nextgen.co.id/");
  if (await canLaunchUrl(url)) {
    await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
    );
  } else {
    debugPrint('Tidak bisa membuka laman $url');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan debug banner
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Nextgen Tutorial'),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Pusatkan elemen
              children: [
                const Text(
                  'Selamat Datang di Nextgen Tutorial!',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20.0), // Spacer antar elemen
                ElevatedButton(
                  onPressed: _launchURLBrowser,
                  child: const Text('Buka di Browser'),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: _launchURLApp,
                  child: const Text('Buka di App'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
