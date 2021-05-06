import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Color primarycolor1 = Color(0xffC0392B);

void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

final tools = ["C++", "Data Structures & Algorithms", "HTML", "Linux"];

final tools1 = ["Python", "Django", "CSS", "Machine Learning"];

final tools2 = ["Dart", "Flutter", "Bootstrap", "Git"];

final toolsmob = [
  "C++",
  "Data Structures & Algorithms",
  "HTML",
  "Linux",
  "Bootstrap",
  "Git"
];

final toolsmob1 = [
  "Python",
  "Django",
  "CSS",
  "Machine Learning",
  "Dart",
  "Flutter"
];

final communityLogo = [
  //'assets/codeforces1.png',
  // 'assets/image/codechefraw1.png',
];

final communityLinks = [
  //"https://www.srmist.edu.in/",
  // "https://www.cseasrm.com/home"
];

const socialIcons = [
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png",
  "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
  "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
];

const socialLinks = [
  "https://www.linkedin.com/in/utkarshchaurasia/",
  "https://github.com/UtkarshChaurasia",
  "https://medium.com/@utkarsh103b",
  "https://m.facebook.com/ucmsd07",
  "https://www.instagram.com/utkarsh_chaurasia.12/?hl=en",
];

final servicesIcons = [
  "assets/services/open.png",
  "assets/services/ui.png",
  "assets/services/app.png",
  "assets/services/ml.png",
  "assets/services/blog.png",
];

final servicesTitles = [
  "Competitive Coding",
  "Web Development",
  "Flutter App Development",
  "Machine Learning",
  "Technical Blog Writing",
];

final servicesDescriptions = [
  "I enjoy brainstorming on complex problems based on data structures, algorithms and maths. And I compete in coding contests which tests speed, problem solving and thinking ability, and accuracy. I would love to have discussion on CP.",
  "Want a webiste for your business idea? Or just for college project? Not to worry! I can built full stack websites for you. I use Bootstrap and React for frontend and Django for backend.\n\nFun Fact: I built this website using Flutter Web.",
  "Having a startup idea? Or maybe just want a prototype for your clients? With Flutter I can get you basic version of your app in no time and you are good to go for your project in future.",
  "I have a keen interest in Machine Learning and I keep reading and implementing various algorithms. I have implemented and experimented with various algorithms and Machine Learning Techniques.",
  "I have been writing technical blogs on Medium for over a year now. So, I can get you technical blogs with awesome header images, interesting topics and SEO friendly.\nCheck out my Medium profile @utkarsh103b",
];

final servicesLinks = [
  "https://www.fiverr.com/hamza6shakeel/be-your-mobile-app-developer-via-flutter",
  "https://www.fiverr.com/hamza6shakeel/get-you-modern-ui-design-using-adobe-xd",
  "https://www.fiverr.com/hamza6shakeel/be-your-mobile-app-developer-via-flutter",
  "https://mhamzadev.medium.com",
  "https://github.com/m-hamzashakeel"
];

final codingTitles = [
  "Codeforces",
  "CodeChef",
  "Geeks For Geeks",
  "HackerRank",
  "Google Competitions",
  "Other Coding Competitions",
];

final codingIcons = [
  "assets/coding/codeforces1.png",
  "assets/coding/cc.png",
  "assets/coding/gfg.png",
  "assets/coding/HackerRank_logo.png",
  "assets/coding/google.png",
  "assets/coding/laptop-coding.png",
];

final codingLinks = [
  "https://codeforces.com/profile/utkarsh_07",
  "https://www.codechef.com/users/utkarsh_uc",
  "https://auth.geeksforgeeks.org/user/utkarsh_chaurasia/practice/",
  "https://www.hackerrank.com/utkarshchaurasia",
  "https://drive.google.com/drive/folders/154mugp0FzSbONv7xrX98LnNZG4QvRr4V?usp=sharing",
  "https://drive.google.com/drive/folders/1i8ohm8DGHjNmb09A6dMfOqW0T9I81z9f?usp=sharing"
];

final codingDescriptions = [
  [
    "Rated as Expert.",
    "Max Ratings 1624.",
    "Best Rank 510/10k in Round 707 (Div 2).",
    "Solved 200+ problems."
  ],
  [
    "Rated as 5 Star.",
    "Max Ratings 2128.",
    "Best Rank 17/6k in Jan Long Challenge."
  ],
  [
    "Institute Rank 40/5k.",
    "Rank 2 in CodeStorm organized by GFG.",
    "Solved 200+ problems."
  ],
  ["5 Star in C++.", "5 Star in Java.", "Solved 80+ problems."],
  [
    "Kick Start Best Rank 1988/12k.",
    "Hash Code 2021 World Rank 1698/11k, AIR 304/4k.",
    "Cleared Qualification Round of Code Jam 2021."
  ],
  [
    "AIR 20/3k World Rank 145/8k in Reply Code Challenge.",
    "Winner of Codesule February Edition, organized by Nagarro Softwares.",
    "Rank 10/600+ participants in CodeMatrix."
  ],
];

final codingIndex = [0, 1, 2, 3, 4, 5];

final projectsBanner = [
  "assets/projects/aidio.jpg",
  "assets/projects/travello.png",
  "assets/projects/monitorb.png",
  "assets/projects/path-finding-visualizer.jpg",
  "assets/projects/ds.png"
];

final projectsIcons = [
  "assets/projects/music.png",
  "assets/projects/travello2.png",
  "assets/projects/1_ubuntu-logo.png",
  "assets/projects/graph.png",
  "assets/projects/dss.png",
];

final projectsTitles = [
  "AIDIO APP",
  "Travello",
  "Linux System Monitor",
  "OpenStreet Route Planner",
  "London Crime Analysis & Prediction",
];

final projectsDescriptions = [
  "An AI powered radio app with beautiful UI. User can set and play radio stations based on the genre of song by voice cammand. It is built using Flutter",
  "Travello web application is a travel guide built using Bootstrap, Jinja and Django and uses PostgreSQL database. A user can read travel blogs and can check out various tourist destinations, their speciality and average cost to visit the place as well. Feature to checkout flights from one place to another is in development phase.",
  "A HTOP like system monitor application for Linux OS. It Parses data from Linux File System, stores data into an object, and manipulates the objects. It displays updated list of processes running on the system on the user’s screen. C++ is used to develop the application.",
  "A C++ based application that finds the shortest path between two places on map. It uses A-star search algorithm to find the shortest path.",
  "It is a Data Analysis and ML based project. Crime Data of London city is scrapped, preprocessed and analysized to get the crime rates of different boroughs in London and subsequently makes prediction for safest places in london to live. It uses Foursquare API to read neighbours data & K-means Clustering to cluster areas.",
];

final projectsLinks = [
  "https://github.com/UtkarshChaurasia/AIDIO",
  "",
  "https://github.com/UtkarshChaurasia/Linux-System-Monitor",
  "https://github.com/UtkarshChaurasia/OpenStreet-Route-Planner",
  "https://github.com/UtkarshChaurasia/London-Crime-Analysis-Prediction",
];

final contactIcons = [
  Icons.home,
  Icons.phone,
  Icons.mail,
];

final contactTitles = [
  "Location",
  "Phone",
  "Email",
];

final contactDetails = [
  "Lucknow, India",
  "(+91) 9517627410",
  "utkarsh103b@gmail.com"
];
