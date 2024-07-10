import 'dart:async';

import 'package:e_commerce/screens/Login_SignUp/Login_Screen.dart';
import 'package:e_commerce/screens/OnBoardingScreen/Onboarding_Screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Splash_Screen extends StatefulWidget {
  Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the next screen after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      navigateToNextScreen();
    });
  }

  // This method checks the shared preferences and decides which screen to navigate to
  void navigateToNextScreen() async {
    // Get the instance of shared preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Get the value of 'seen' key, which is a boolean
    // If the key does not exist, return false as a default value
    bool seen = prefs.getBool('seen') ?? false;
    // If the user has seen the onboarding screen, go to the home screen
    if (seen) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login_Screen()),
      );
    } else {
      // Otherwise, go to the onboarding screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onboarding_Screen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Rectangle 1.png'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                Text("Welcome",
                    style: GoogleFonts.suezOne(
                        //fontWeight: FontWeight.w400,
                        fontSize: 32.0,
                        color: Colors.white,
                        letterSpacing: 3.2)),
                const SizedBox(
                  height: 20,
                ),
                Text('to our program',
                    style: GoogleFonts.juliusSansOne(
                        fontWeight: FontWeight.w400,
                        fontSize: 24.0,
                        color: Colors.black,
                        letterSpacing: 2.4)),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 2),
            Text('let’s Gooo',
                style: GoogleFonts.juliusSansOne(
                    fontWeight: FontWeight.w400,
                    fontSize: 32.0,
                    color: Colors.black)),
          ],
        ),
        
      ),
    );
  }
}
//