import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:knowuc/utils/utils.dart';
import 'package:knowuc/widget/codingprofilecard.dart';
import 'package:google_fonts/google_fonts.dart';

class CodingMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
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
            "I may not be perfect, but I'm surely of some help :)\n\n",
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
          ),
          CarouselSlider.builder(
            itemCount: 6,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: CodingProfileCard(
                cardWidth: width < 650 ? width * 0.8 : width * 0.5,
                codingIcon: codingIcons[i],
                codingTitle: codingTitles[i],
                codingDescription: codingDescriptions[i],
                codingLink: codingLinks[i],
                index: i,
              ),
            ),
            options: CarouselOptions(
                height: height * 0.45,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enableInfiniteScroll: false),
          )
        ],
      ),
    );
  }
}
