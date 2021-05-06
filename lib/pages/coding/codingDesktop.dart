import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knowuc/utils/utils.dart';
import 'package:knowuc/widget/codingprofilecard.dart';
import 'package:knowuc/animations/bottomAnimation.dart';

class CodingDesktop extends StatelessWidget {
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
            "\nCoding Profiles",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            "Make it work, make it right, make it fast.\n\n",
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: width < 1200
                    ? MainAxisAlignment.spaceEvenly
                    : MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: WidgetAnimator(
                      child: CodingProfileCard(
                        cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                        cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                        codingIcon: codingIcons[0],
                        codingTitle: codingTitles[0],
                        codingLink: codingLinks[0],
                        codingDescription: codingDescriptions[0],
                        index: codingIndex[0],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Flexible(
                    child: WidgetAnimator(
                      child: CodingProfileCard(
                        cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                        cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                        codingIcon: codingIcons[1],
                        codingTitle: codingTitles[1],
                        codingLink: codingLinks[1],
                        codingDescription: codingDescriptions[1],
                        index: codingIndex[1],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Flexible(
                    child: WidgetAnimator(
                      child: CodingProfileCard(
                        cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                        cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                        codingIcon: codingIcons[2],
                        codingTitle: codingTitles[2],
                        codingLink: codingLinks[2],
                        codingDescription: codingDescriptions[2],
                        index: codingIndex[2],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: width * 0,
                height: height * 0.04,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: WidgetAnimator(
                      child: CodingProfileCard(
                        cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                        cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                        codingIcon: codingIcons[3],
                        codingTitle: codingTitles[3],
                        codingLink: codingLinks[3],
                        codingDescription: codingDescriptions[3],
                        index: codingIndex[3],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Flexible(
                    child: WidgetAnimator(
                      child: CodingProfileCard(
                        cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                        cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                        codingIcon: codingIcons[4],
                        codingTitle: codingTitles[4],
                        codingLink: codingLinks[4],
                        codingDescription: codingDescriptions[4],
                        index: codingIndex[4],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Flexible(
                    child: WidgetAnimator(
                      child: CodingProfileCard(
                        cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                        cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                        codingIcon: codingIcons[5],
                        codingTitle: codingTitles[5],
                        codingLink: codingLinks[5],
                        codingDescription: codingDescriptions[5],
                        index: codingIndex[5],
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
