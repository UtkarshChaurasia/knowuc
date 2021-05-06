import 'package:flutter/material.dart';
import 'package:knowuc/pages/navbar/nav_bar.dart';
import 'package:knowuc/widget/aboutme.dart';
import 'package:knowuc/widget/toolsTechmob.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      color: Colors.grey[900],
      child: Column(
        children: [
          Text(
            "About Me",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          AboutMe(
            textAlign: TextAlign.center,
            fontSize: 13,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          SizedBox(
            height: height * 0.025,
          ),
          ToolsTechMob(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              NavBarLogo(
                height: height * 0.04,
              )
            ],
          )
        ],
      ),
    );
  }
}
