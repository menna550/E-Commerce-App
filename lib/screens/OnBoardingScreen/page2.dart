import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * (485 / 812),
            alignment: Alignment.topCenter,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Rectangle 10.png"),
                    fit: BoxFit.fill)),
          ),
          SizedBox(height: 20,),
          Text(
            "Get The Best Models",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 22.0,
                letterSpacing: 2.2),
          ),
          SizedBox(height: 20,),
          Text(
            "You Can Get The Best Cars And Service",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 14.0,
                letterSpacing: 1.4),
          ),
          
        ],
      ),
    );
  }
}
