import 'package:flutter/material.dart';
import 'package:knowuc/animations/bottomAnimation.dart';
import 'package:knowuc/utils/utils.dart';
import 'package:knowuc/widget/projectcard.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          Text(
            "\nContact",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            "Let's get in touch and build something together :)\n\n",
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: WidgetAnimator(
                  child: ProjectCard(
                    cardWidth: width < 1200 ? width * 0.25 : width * 0.2,
                    cardHeight: width < 1200 ? height * 0.28 : height * 0.25,
                    projectIconData: contactIcons[0],
                    projectTitle: contactTitles[0],
                    projectDescription: contactDetails[0],
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              Flexible(
                child: WidgetAnimator(
                  child: ProjectCard(
                    cardWidth: width < 1200 ? width * 0.25 : width * 0.2,
                    cardHeight: width < 1200 ? height * 0.28 : height * 0.25,
                    projectIconData: contactIcons[1],
                    projectTitle: contactTitles[1],
                    projectDescription: contactDetails[1],
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              Flexible(
                child: WidgetAnimator(
                  child: ProjectCard(
                    cardWidth: width < 1200 ? width * 0.25 : width * 0.2,
                    cardHeight: width < 1200 ? height * 0.28 : height * 0.25,
                    projectIconData: contactIcons[2],
                    projectTitle: contactTitles[2],
                    projectDescription: contactDetails[2],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
