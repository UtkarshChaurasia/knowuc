import 'package:flutter/material.dart';
import 'package:knowuc/animations/bottomAnimation.dart';
import 'package:knowuc/widget/projectcard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knowuc/utils/utils.dart';

class ProjectDesktop extends StatelessWidget {
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
            "\nProjects",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            "Here are few samples of my previous work :)\n\n",
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
          ),
          SizedBox(
            height: width > 1200 ? height * 0.45 : width * 0.2,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return VerticalDivider(
                  color: Colors.transparent,
                  width: width * 0.015,
                );
              },
              itemBuilder: (context, index) {
                return WidgetAnimator(
                  child: ProjectCard(
                      cardWidth: width < 1200 ? width * 0.25 : width * 0.35,
                      cardHeight: width < 1200 ? height * 0.28 : height * 0.1,
                      backImage: projectsBanner[index],
                      projectIcon: projectsIcons[index],
                      projectTitle: projectsTitles[index],
                      projectDescription: projectsDescriptions[index],
                      projectLink: projectsLinks[index],
                      bottomWidget: index != 1
                          ? Image.network(
                              "https://img.icons8.com/bubbles/900/000000/github.png",
                              height: height * 0.04,
                            )
                          : Image.asset("cs2.png")),
                );
              },
              itemCount: 5,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          MaterialButton(
            hoverColor: primarycolor1.withAlpha(150),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(color: primarycolor1)),
            onPressed: () {
              launchURL("https://github.com/UtkarshChaurasia");
            },
            child: Text(
              "See More",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
