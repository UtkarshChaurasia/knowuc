import 'package:flutter/material.dart';
import 'package:knowuc/utils/utils.dart';
import 'package:knowuc/pages/navbar/nav_bar.dart';
import 'package:knowuc/widget/aboutme.dart';
import 'package:knowuc/widget/communityIconBtn.dart';
import 'package:knowuc/widget/toolsTech.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutTab extends StatelessWidget {
  final _communityLogoHeight = [50.0, 70.0, 30.0];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      height: height,
      color: Colors.grey[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "\nAbout Me",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: AboutMe(
                  fontSize: 12,
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                width: 25.0,
              ),
              Expanded(
                child: ToolsTech(),
              )
            ],
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Row(
            children: [
              for (int i = 0; i < communityLogo.length; i++)
                CommunityIconBtn(
                  icon: communityLogo[i],
                  link: communityLinks[i],
                  height: _communityLogoHeight[i],
                ),
              Expanded(
                child: Container(),
              ),
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
