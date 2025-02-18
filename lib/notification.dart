// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:workmanager/workmanager.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   Workmanager().initialize(
//     callbackDispatcher,
//     isInDebugMode: true,
//   );

//   Workmanager().registerPeriodicTask(
//     "2",
//     "simplePeriodicTask",
//     frequency: const Duration(minutes: 15),
//   );
//   runApp(const MyApp());
// }

// void callbackDispatcher() {
//   Workmanager().executeTask((task, inputData) async {
//     FlutterLocalNotificationsPlugin flip = FlutterLocalNotificationsPlugin();

//     var android = const AndroidInitializationSettings('@mipmap/ic_launcher');
//     var iOS = const DarwinInitializationSettings();
//     var settings = InitializationSettings(android: android, iOS: iOS);
//     await flip.initialize(settings);

//     await _showNotificationWithDefaultSound(flip);
//     return Future.value(true);
//   });
// }

// Future<void> _showNotificationWithDefaultSound(
//     FlutterLocalNotificationsPlugin flip) async {
//   var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
//     'your_channel_id',
//     'your_channel_name',
//     channelDescription: 'your_channel_description',
//     importance: Importance.max,
//     priority: Priority.high,
//   );

//   var iOSPlatformChannelSpecifics = const DarwinNotificationDetails(
//     subtitle: 'your_channel_subtitle',
//     interruptionLevel: InterruptionLevel.critical,
//   );

//   var platformChannelSpecifics = NotificationDetails(
//     android: androidPlatformChannelSpecifics,
//     iOS: iOSPlatformChannelSpecifics,
//   );

//   await flip.show(
//     0,
//     'Nextgen',
//     'You are one step away to connect with Nextgen',
//     platformChannelSpecifics,
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Nextgen',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const HomePage(title: "Nextgen"),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Text("Welcome to Nextgen!"),
//       ),
//     );
//   }
// }
