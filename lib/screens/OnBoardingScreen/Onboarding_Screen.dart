import 'package:e_commerce/screens/Login_SignUp/Login_Screen.dart';
import 'package:e_commerce/screens/OnBoardingScreen/page1.dart';
import 'package:e_commerce/screens/OnBoardingScreen/page2.dart';
import 'package:e_commerce/screens/OnBoardingScreen/page3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding_Screen extends StatefulWidget {
  Onboarding_Screen({super.key});

  @override
  State<Onboarding_Screen> createState() => _Onboarding_ScreenState();
}

class _Onboarding_ScreenState extends State<Onboarding_Screen> {

  @override
  void initState() {
    super.initState();
    // Set the 'seen' key to true in the shared preferences
    // This means that the user has seen the onboarding screen
    setSeen();
  }

  // This method sets the 'seen' key to true in the shared preferences
  void setSeen() async {
    // Get the instance of shared preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Set the boolean value of 'seen' key to true
    prefs.setBool('seen', true);
  }

  final _controller = PageController(initialPage: 0);
  int currenPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.76,
            child: PageView(
              controller: _controller,
              onPageChanged: (value) {
                setState(() {
                  currenPage = value;
                });
              },
              children: const [page1(), page2(), page3()],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller, // PageController
            count: 3,
            effect: const WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: Color(0xFF1017C6),
                dotColor: Color(
                  0xFFA3A3A3,
                )),
          ),
          const SizedBox(
            height: 30,
          ),
          
          //_____________________Buttons 

          currenPage == 2
              ? InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => Login_Screen(),
                      ),
                    );
                  },
                  child: Container(
                      width: 342.0,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFF0610F4),
                      ),
                      child: Center(
                          child: Text(
                        "Finish",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          letterSpacing: 1.6,
                          fontSize: 16.0,
                        ),
                      ))),
                )
              : Column(
                  children: [
                    InkWell(
                      onTap: () {
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut);
                      },
                      child: Container(
                          width: 342.0,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xFF0610F4),
                          ),
                          child: Center(
                            child: Text(
                              'NEXT',
                              style: GoogleFonts.poppins(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.6,
                                  color: Colors.white),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => Login_Screen(),
                          ),
                        );
                      },
                      child: Container(
                          width: 342.0,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xFFA3A3A3),
                          ),
                          child: Center(
                              child: Text(
                            'SKIP',
                            style: GoogleFonts.poppins(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.6,
                                color: Colors.black),
                          ))),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
