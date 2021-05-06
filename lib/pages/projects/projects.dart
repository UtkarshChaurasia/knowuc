import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:knowuc/pages/projects/projectMobile.dart';
import 'package:knowuc/pages/projects/projectDesktop.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ProjectMobile(),
      tablet: ProjectMobile(),
      desktop: ProjectDesktop(),
    );
  }
}
