import 'package:flutter/material.dart';
import 'package:knowuc/utils/utils.dart';
import 'package:knowuc/pages/mainsection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Utkarsh',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: primarycolor1,
        accentColor: primarycolor1,
        highlightColor: primarycolor1,
      ),
      home: MainPage(),
    );
  }
}
