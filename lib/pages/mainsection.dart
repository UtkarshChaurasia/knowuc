import 'package:knowuc/pages/contacts/contacts.dart';
import 'package:knowuc/utils/utils.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:knowuc/animations/entranceFader.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knowuc/pages/navbar/nav_bar.dart';
import 'package:knowuc/pages/about/about.dart';
import 'package:knowuc/pages/home/home.dart';
import 'package:knowuc/pages/services/services.dart';
import 'package:knowuc/pages/projects/projects.dart';
import 'package:knowuc/widget/scrollarrow.dart';
import 'package:knowuc/widget/footer.dart';
import 'package:knowuc/pages/coding/coding.dart';

class MainPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {
  ScrollController _scrollController =
      ScrollController(initialScrollOffset: 25.0);
  ItemScrollController _itemScrollController = ItemScrollController();
  ItemPositionsListener _itemPositionListener = ItemPositionsListener.create();

  final List<String> _sectionsName = [
    "Home",
    "About",
    "Domain",
    "Coding Profiles",
    "Projects",
    "Contact",
  ];

  final List<IconData> _sectionsIcons = [
    Icons.home,
    Icons.person,
    Icons.settings,
    Icons.code,
    Icons.build,
    Icons.phone,
  ];

  void _scroll(int i) {
    _itemScrollController.scrollTo(index: i, duration: Duration(seconds: 1));
  }
/*
  Widget sectionWidget(int i) {
    if (i == 0) {
      return HomePage();
    } else if (i == 1) {
      return About();
    } else if (i == 2) {
      return Services();
    } else if (i == 3) {
      return Projects();
    } else if (i == 4) {
      return Contact();
    } else if (i == 5) {
      return SizedBox(
        height: 40.0,
      );
    } else if (i == 6) {
      return ScrollArrow(
        onPressed: () => _scroll(0),
      );
    } else if (i == 7) {
      return Footer();
    } else {
      return Container();
    }
  }*/

  Widget sectionWidget(int i) {
    if (i == 0) {
      return HomePage();
    } else if (i == 1) {
      return About();
    } else if (i == 2) {
      return Services();
    } else if (i == 3) {
      return Coding();
    } else if (i == 4) {
      return Projects();
    } else if (i == 5) {
      return Contact();
    } else if (i == 6) {
      return SizedBox(
        height: 40.0,
      );
    } else if (i == 7) {
      return ScrollArrow(
        onPressed: () => _scroll(0),
      );
    } else if (i == 8) {
      return Footer();
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: MediaQuery.of(context).size.width > 760
          ? _appBarTabDesktop()
          : AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
      drawer: MediaQuery.of(context).size.width < 760 ? _appBarMobile() : null,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: RawScrollbar(
          controller: _scrollController,
          thumbColor: primarycolor1,
          thickness: 5.0,
          child: ScrollablePositionedList.builder(
            itemScrollController: _itemScrollController,
            itemPositionsListener: _itemPositionListener,
            itemCount: 8,
            itemBuilder: (context, index) {
              return sectionWidget(index);
            },
          ),
        ),
      ),
    );
  }

  Widget _appBarActions(String childText, int index, IconData icon) {
    return MediaQuery.of(context).size.width > 760
        ? EntranceFader(
            offset: Offset(0, -20),
            delay: Duration(seconds: 3),
            duration: Duration(seconds: 1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                hoverColor: primarycolor1,
                onPressed: () => _scroll(index),
                child: Text(
                  childText,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
                hoverColor: primarycolor1,
                onPressed: () => _scroll(index),
                child: ListTile(
                  leading: Icon(
                    icon,
                    color: primarycolor1,
                  ),
                  title: Text(childText),
                )),
          );
  }

  Widget _appBarTabDesktop() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title: MediaQuery.of(context).size.width < 740
          ? EntranceFader(
              duration: Duration(seconds: 1),
              offset: Offset(0, -20),
              delay: Duration(seconds: 3),
              child: NavBarLogo())
          : EntranceFader(
              offset: Offset(0, -20),
              duration: Duration(seconds: 1),
              delay: Duration(seconds: 3),
              child: NavBarLogo(
                height: MediaQuery.of(context).size.height * 0.035,
              ),
            ),
      actions: [
        for (int i = 0; i < _sectionsName.length; i++)
          _appBarActions(_sectionsName[i], i, _sectionsIcons[i]),
        EntranceFader(
          offset: Offset(0, -20),
          delay: Duration(seconds: 3),
          duration: Duration(seconds: 1),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              hoverColor: primarycolor1.withAlpha(150),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: primarycolor1)),
              onPressed: () {
                html.window.open(
                    'https://drive.google.com/drive/folders/1V_gUsRs6kkHBdJGQV7Lf5zynGLXL32Uh?usp=sharing',
                    "pdf");
              },
              child: Text(
                "Resume",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _appBarMobile() {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: NavBarLogo(
                height: 28,
              ),
            ),
            for (int i = 0; i < _sectionsName.length; i++)
              _appBarActions(_sectionsName[i], i, _sectionsIcons[i]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                hoverColor: primarycolor1.withAlpha(150),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: primarycolor1)),
                onPressed: () {
                  launchURL(
                      "https://drive.google.com/drive/folders/1V_gUsRs6kkHBdJGQV7Lf5zynGLXL32Uh?usp=sharing");
                },
                child: ListTile(
                  leading: Icon(
                    Icons.book,
                    color: Colors.red,
                  ),
                  title: Text(
                    "Resume",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
