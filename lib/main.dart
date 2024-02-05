// يتم استيراد حزم وملفات مختلفة المطلوبة للتطبيق

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loafly/screens/auth/welcome_screen.dart';
import 'package:loafly/screens/root.dart';

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
