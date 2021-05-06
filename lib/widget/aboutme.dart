import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatelessWidget {
  final TextAlign textAlign;
  final double fontSize;

  const AboutMe({Key key, this.textAlign, this.fontSize}) : super(key: key);

  TextStyle _textStyle(double fSize, bool bold) {
    return GoogleFonts.montserrat(
      fontSize: fSize ?? 14,
      fontWeight: !bold ? FontWeight.w100 : FontWeight.w400,
      letterSpacing: 1.0,
      height: 2.0,
      color: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: textAlign ?? TextAlign.left,
        text: TextSpan(children: [
          TextSpan(
            text: "Hi There! I'm Utkarsh, a ",
            style: MediaQuery.of(context).size.width < 600
                ? _textStyle(fontSize, false)
                : _textStyle(fontSize + 2, false),
          ),
          TextSpan(
            text:
                "Competitive Coder, Flutter developer, Web Developer and Technial Writer ",
            style: MediaQuery.of(context).size.width < 100
                ? _textStyle(fontSize, true)
                : _textStyle(fontSize + 2, true),
          ),
          TextSpan(
            text:
                "based in Lucknow, India.\n\n I am a prefinal year student at .",
            style: MediaQuery.of(context).size.width < 600
                ? _textStyle(fontSize, false)
                : _textStyle(fontSize + 2, false),
          ),
          TextSpan(
            text:
                "SRM University, Chennai pursing B.Tech in Computer Science Engineering",
            style: MediaQuery.of(context).size.width < 100
                ? _textStyle(fontSize, true)
                : _textStyle(fontSize + 2, true),
          ),
          TextSpan(
            text:
                ". I have experience in developing flutter mobile apps and full stack web applications.\n I also love competing in various coding contests. I am rated as ",
            style: MediaQuery.of(context).size.width < 600
                ? _textStyle(fontSize, false)
                : _textStyle(fontSize + 2, false),
          ),
          TextSpan(
            text: "5 star on CodeChef and Expert on CodeForces.\n\n",
            style: MediaQuery.of(context).size.width < 100
                ? _textStyle(fontSize, true)
                : _textStyle(fontSize + 2, true),
          ),
          TextSpan(
            text: "I worked as a ",
            style: MediaQuery.of(context).size.width < 600
                ? _textStyle(fontSize, false)
                : _textStyle(fontSize + 2, false),
          ),
          TextSpan(
            text: "Software Developer Intern",
            style: MediaQuery.of(context).size.width < 100
                ? _textStyle(fontSize, true)
                : _textStyle(fontSize + 2, true),
          ),
          TextSpan(
            text: " at London Startegy & Consulting Group. I am also the ",
            style: MediaQuery.of(context).size.width < 600
                ? _textStyle(fontSize, false)
                : _textStyle(fontSize + 2, false),
          ),
          TextSpan(
            text: "Technical Lead at CSE Association, SRM.\n\n",
            style: MediaQuery.of(context).size.width < 100
                ? _textStyle(fontSize, true)
                : _textStyle(fontSize + 2, true),
          ),
          TextSpan(
            text:
                "I was selected as one of the Hash Code 2021 Hub organizers by ",
            style: MediaQuery.of(context).size.width < 600
                ? _textStyle(fontSize, false)
                : _textStyle(fontSize + 2, false),
          ),
          TextSpan(
            text: "Google.",
            style: MediaQuery.of(context).size.width < 100
                ? _textStyle(fontSize, true)
                : _textStyle(fontSize + 2, true),
          ),
        ]));
  }
}
