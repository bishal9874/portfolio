import 'package:bishalprofile/sections/about/about/about.dart';
import 'package:bishalprofile/sections/contact/contact.dart';
import 'package:bishalprofile/sections/footer/mainfooter.dart';
import 'package:bishalprofile/sections/home/home.dart';
import 'package:bishalprofile/sections/portfolio/portfolio.dart';
import 'package:bishalprofile/sections/services/services.dart';
import 'package:bishalprofile/widgets/footer.dart';
import 'package:flutter/material.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/mobileFace.png';
  static const String coloredPhoto = 'assets/photos/bishalcolor.jpg';
  static const String blackWhitePhoto = 'assets/photos/illutra.png';
  static const String backPhoto = 'assets/photos/backw2.png';
  // static const String backgif = 'assets/photos/grm.gif';

  // work
  static const String dsc = 'assets/techIcons/Quess.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university =
      'assets/techIcons/Adamas_University_Logo.png';
  static const String college =
      'assets/techIcons/Eminent_College_of_Pharmaceutical_Technology_(ECPT,_Barasat)_-_Logo.png';

  // services
  static const String gaming =
      'assets/services/gamers-play-online-video-game-5071155-4231654.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/appdev.jpg';
  static const String automation = 'assets/services/automation.png';
  static const String openSource = 'assets/services/opensoucre.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    "https://img.icons8.com/android/480/ffffff/twitter.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  ];

  static const List<String> socialLinks = [
    "https://www.facebook.com/profile.php?id=100033904822878",
    "https://www.instagram.com/bishal_mondal7/?hl=en",
    "https://twitter.com/",
    "https://www.linkedin.com/in/bishal-mondal-b6516a186/",
    "https://github.com/bishal9874",
  ];

  // static const String resume =
  //     'https://drive.google.com/file/d/1bDNNrkQtNVJbXcdwMSx0crQQvAF_nMwV/view?usp=sharing';

  static const String gitHub = 'https://github.com/bishal9874';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    // Portfolio(),
    Contact(),
    FooterPart()
  ];
}
