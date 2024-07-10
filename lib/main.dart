
import 'package:e_commerce/screens/CategoryScreen.dart';
import 'package:e_commerce/screens/Login_SignUp/Login_Screen.dart';
import 'package:e_commerce/screens/OnBoardingScreen/Onboarding_Screen.dart';
import 'package:e_commerce/screens/splash_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home:  Splash_Screen()
    );
  }
}


