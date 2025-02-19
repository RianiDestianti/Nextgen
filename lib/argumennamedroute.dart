// berhasil
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: (settings) {
          if (settings.name == PassArgumentsScreen.routeName) {
            final ScreenArguments args = settings.arguments as ScreenArguments;
            return MaterialPageRoute(
              builder: (context) {
                return PassArgumentsScreen(
                  title: args.titleBar,
                  message: args.textMessage,
                );
              },
            );
          }
          assert(false, 'Implementation ${settings.name}');
          return null;
        },
        title: 'Arguments in named routes',
        home: const HomeScreen(),
        routes: {
          ExtractArgumentsScreen.routeName: (context) =>
              const ExtractArgumentsScreen(),
        });
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nextgen Tutorial'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  ExtractArgumentsScreen.routeName,
                  arguments: ScreenArguments(
                    'Extract Arguments Screen',
                    'Extracted in the build method.',
                  ),
                );
              },
              child: const Text("Extracts arguments"),
            ),
            // on tap navigate to named route
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              onPressed: () {
                // on tab change route
                Navigator.pushNamed(
                  context,
                  PassArgumentsScreen.routeName,
                  arguments: ScreenArguments(
                    'Accept Arguments Screen',
                    'Extracted in the onGenerateRoute function.',
                  ),
                );
              },
              child: const Text("Accepts arguments"),
            ),
          ],
        ),
      ),
    );
  }
}

class ExtractArgumentsScreen extends StatelessWidget {
  static const routeName = '/extractArguments';

  const ExtractArgumentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenArguments? args =
        ModalRoute.of(context)?.settings.arguments as ScreenArguments?;

    return Scaffold(
      appBar: AppBar(
        title: Text(args?.titleBar ?? 'Tidak ada judul'),
      ),
      body: Center(
        child: Text(args?.textMessage ?? 'Tidak ada data'),
      ),
    );
  }
}

//Widget to accept arguments
class PassArgumentsScreen extends StatelessWidget {
  static const routeName = '/passArguments';

  final String title;
  final String message;

  const PassArgumentsScreen({
    Key? key,
    required this.title,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}

class ScreenArguments {
  final String titleBar;
  final String textMessage;

  ScreenArguments(this.titleBar, this.textMessage);
}