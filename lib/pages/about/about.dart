import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:knowuc/pages/about/aboutdesktop.dart';
import 'package:knowuc/pages/about/aboutmobile.dart';
import 'package:knowuc/pages/about/abouttab.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutMobile(),
      tablet: AboutTab(),
      desktop: AboutDesktop(),
    );
  }
}
