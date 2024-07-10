import 'package:e_commerce/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xFF3A83C8),
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  // pinned: true,
                  floating: true,
                  expandedHeight: 155,
                  backgroundColor: Color(0xFF3A83C8),
                  title: search_bar(),
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(
                      "  Cars List",
                      style: GoogleFonts.rammettoOne(color: Colors.white, fontWeight: FontWeight.w400, letterSpacing: 3.2,),
                    ),
                  ),
                ),
                SliverList.builder(
                    itemCount: 30,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 14.0),
                        child: Container(
                          height: 83.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Color(0xFF04192F)),
                          child: Center(
                            child: Text(
                              "MERCEDES",
                              style: GoogleFonts.poppins(
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 2.8,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    })),
              ],
            )));
  }
}





                // flexibleSpace: FlexibleSpaceBar(
                //     background: Container(
                //       color: Color(0xFF3A83C8),
                //     ),
                //     title: Text(
                //       "      Cars List",
                //       style: GoogleFonts.poppins(color: Colors.white),
                //     ),
                //   ),