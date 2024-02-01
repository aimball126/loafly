import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loafly/screens/auth/singup/using_phone.dart';
import 'package:loafly/screens/auth/welcome_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';

import 'constants/colors.dart';

Future<void> main() async {

  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );

  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => Future.value(MyApp()));
  runApp(GetMaterialApp(home: MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Loaf.ly",
      theme: ThemeData(
        primaryColor: primary,
        textTheme: GoogleFonts.tajawalTextTheme(
          Theme.of(context).textTheme,
        )
      ),
      home:  const WelcomeScreen(),
    );
  }
}
