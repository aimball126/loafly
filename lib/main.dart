// يتم استيراد حزم وملفات مختلفة المطلوبة للتطبيق

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loafly/screens/auth/singup/using_phone.dart';
import 'package:loafly/screens/auth/welcome_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';

import 'constants/colors.dart';
// دالة البدء الرئيسية للتطبيق

Future<void> main() async {

  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );

  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => Future.value(MyApp()));
  runApp(GetMaterialApp(home: MyApp()));
}

// MyApp هو الواجهة الجذر للتطبيق

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

  // تكوين التطبيق وإعداداته

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Loaf.ly", // عنوان التطبيق
      theme: ThemeData(
        primaryColor: primary,  // لون الثيم الأساسي
        textTheme: GoogleFonts.tajawalTextTheme(
          Theme.of(context).textTheme,
        ) // نمط الخط المستخدم في التطبيق
      ),
      home:  const WelcomeScreen(), // الشاشة الرئيسية للتطبيق
    );
  }
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dashboard',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          primaryColor: MaterialColor(
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
          scaffoldBackgroundColor: Color(0xFF171821),
          fontFamily: 'IBMPlexSans',
          brightness: Brightness.dark),
      home: DashBoard(),
    );
  }
