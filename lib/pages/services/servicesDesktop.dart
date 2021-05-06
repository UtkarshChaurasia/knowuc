import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knowuc/utils/utils.dart';
import 'package:knowuc/widget/serviceCard.dart';
import 'package:knowuc/animations/bottomAnimation.dart';

class ServiceDesktop extends StatelessWidget {
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
            "\nWhat I Do ?",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            "I may not be perfect, but I'm surely of some help :)\n\n",
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: width < 1200
                    ? MainAxisAlignment.spaceEvenly
                    : MainAxisAlignment.center,
                children: [
                  WidgetAnimator(
                    child: ServiceCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      serviceIcon: servicesIcons[0],
                      serviceTitle: servicesTitles[0],
                      serviceDescription: servicesDescriptions[0],
                      serviceLink: servicesLinks[0],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  WidgetAnimator(
                    child: ServiceCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      serviceIcon: servicesIcons[1],
                      serviceTitle: servicesTitles[1],
                      serviceDescription: servicesDescriptions[1],
                      serviceLink: servicesLinks[1],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  WidgetAnimator(
                    child: ServiceCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      serviceIcon: servicesIcons[2],
                      serviceTitle: servicesTitles[2],
                      serviceDescription: servicesDescriptions[2],
                      serviceLink: servicesLinks[2],
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
                  WidgetAnimator(
                    child: ServiceCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      serviceIcon: servicesIcons[3],
                      serviceTitle: servicesTitles[3],
                      serviceDescription: servicesDescriptions[3],
                      serviceLink: servicesLinks[3],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  WidgetAnimator(
                    child: ServiceCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      serviceIcon: servicesIcons[4],
                      serviceTitle: servicesTitles[4],
                      serviceDescription: servicesDescriptions[4],
                      serviceLink: servicesLinks[4],
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
