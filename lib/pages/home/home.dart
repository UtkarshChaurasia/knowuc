import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:knowuc/pages/home/homedesktop.dart';
import 'package:knowuc/pages/home/homemobile.dart';
import 'package:knowuc/pages/home/hometab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeMobile(),
      tablet: HomeTab(),
      desktop: HomeDesktop(),
    );
  }
}
