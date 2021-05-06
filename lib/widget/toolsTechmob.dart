import 'package:flutter/material.dart';
import 'package:knowuc/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class ToolTechMobWidget extends StatelessWidget {
  final String techName;
  const ToolTechMobWidget({Key key, this.techName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: primarycolor1,
            size: MediaQuery.of(context).size.height * 0.02,
          ),
          Text(" $techName")
        ],
      ),
    );
  }
}

class ToolsTechMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Technologies I have worked with:\n",
            style: GoogleFonts.montserrat(color: Colors.red, fontSize: 23)),
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < toolsmob.length; i++)
                  ToolTechMobWidget(
                    techName: toolsmob[i],
                  ),
                for (int i = 0; i < toolsmob1.length; i++)
                  (width >= 600 && width <= 950)
                      ? ToolTechMobWidget(
                          techName: toolsmob1[i],
                        )
                      : Container(),
              ],
            ),
            (width <= 600 || width >= 950)
                ? SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  )
                : SizedBox(),
            (width <= 600 || width >= 950)
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 0; i < toolsmob1.length; i++)
                        ToolTechMobWidget(
                          techName: toolsmob1[i],
                        ),
                    ],
                  )
                : Container(),
          ],
        )
      ],
    );
  }
}
