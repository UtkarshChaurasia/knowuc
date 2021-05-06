import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:knowuc/pages/coding/codingDesktop.dart';
import 'package:knowuc/pages/coding/codingMobile.dart';

class Coding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CodingMobile(),
      tablet: CodingMobile(),
      desktop: CodingDesktop(),
    );
  }
}
