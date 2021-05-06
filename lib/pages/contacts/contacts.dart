import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:knowuc/pages/contacts/contactsMobile.dart';
import 'package:knowuc/pages/contacts/contactsDesktop.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ContactMobile(),
      tablet: ContactMobile(),
      desktop: ContactDesktop(),
    );
  }
}
