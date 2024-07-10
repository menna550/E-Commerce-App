import 'package:e_commerce/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp_Screen extends StatelessWidget {
  const SignUp_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Rectangle 1.png"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Welcome",
                  style: GoogleFonts.suezOne(
                      //fontWeight: FontWeight.w400,
                      fontSize: 32.0,
                      color: Colors.white,
                      letterSpacing: 3.2)),
              SizedBox(height: 37,),
              Padding(
                padding: const EdgeInsets.only(left: 29.0, right: 29.0),
                child: TextFormField(
                  // autofocus: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.white)
                    ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "username",
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 32.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 3.2)),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 29.0, right: 29.0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.white)
                    ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "email",
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 32.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 3.2)),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 29.0, right: 29.0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.white,style: BorderStyle.none)
                    ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "password",
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 32.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 3.2)),
                ),
              ),
              SizedBox(
                height: 58,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 8, 99, 173),
                      maximumSize: Size(342, 45)),
                  onPressed: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => Home_screen(),
                          ),
                        );
                  },
                  child: Center(
                    child: Text(
                      "Sign-in",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0,
                          letterSpacing: 1.8,
                          color: Colors.white),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
