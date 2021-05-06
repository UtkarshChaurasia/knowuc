import 'package:flutter/material.dart';
import 'package:knowuc/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class CodingProfileCard extends StatefulWidget {
  final String codingIcon;
  final String codingTitle;
  final String codingLink;
  final double cardWidth;
  final double cardHeight;
  final List codingDescription;
  final int index;

  const CodingProfileCard(
      {@required this.codingIcon,
      this.codingTitle,
      this.codingLink,
      this.cardHeight,
      this.cardWidth,
      this.codingDescription,
      this.index});

  @override
  _CodingProfileState createState() => _CodingProfileState();
}

class _CodingProfileState extends State<CodingProfileCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => launch(widget.codingLink),
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: Container(
        width: widget.cardWidth,
        height: widget.cardHeight,
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: isHover
                ? [
                    BoxShadow(
                      color: primarycolor1.withAlpha(200),
                      blurRadius: 12.0,
                      offset: Offset(2.0, 3.0),
                    )
                  ]
                : []),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.codingIcon,
              height: height * 0.1,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              widget.codingTitle,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: height * 0.02,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            for (int i = 0; i < codingDescriptions[widget.index].length; i++)
              Expanded(
                child: Row(
                  children: [
                    Icon(
                      Icons.play_arrow,
                      color: primarycolor1,
                      size: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Flexible(
                      child: Text(
                        widget.codingDescription[i],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            fontSize: height * 0.015,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.w100,
                            height: width < 900 ? 2.3 : 1.5),
                      ),
                    ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
