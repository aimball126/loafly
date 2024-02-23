import 'package:flutter/material.dart';
import 'package:flutter_dashboard/const.dart';
import 'package:flutter_dashboard/dashboard.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dashboard',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: MaterialColor(
          primaryColorCode,
          <int, Color>{
            50: const Color.fromARGB(255, 212, 159, 14).withOpacity(0.1),
            100: const Color.fromARGB(255, 212, 159, 14).withOpacity(0.2),
            200: const Color.fromARGB(255, 212, 159, 14).withOpacity(0.3),
            300: const Color.fromARGB(255, 212, 159, 14).withOpacity(0.4),
            400: const Color.fromARGB(255, 212, 159, 14).withOpacity(0.5),
            500: const Color.fromARGB(255, 212, 159, 14).withOpacity(0.6),
            600: const Color.fromARGB(255, 212, 159, 14).withOpacity(0.7),
            700: const Color.fromARGB(255, 212, 159, 14).withOpacity(0.8),
            800: const Color.fromARGB(255, 212, 159, 14).withOpacity(0.9),
            900: const Color.fromARGB(255, 212, 159, 14).withOpacity(1.0),
          },
        ),
        scaffoldBackgroundColor: const Color(0xFF171821),
        fontFamily: 'IBMPlexSans',
        brightness: Brightness.dark,
      ),
      home: DashBoard(),
    );
  }
}
