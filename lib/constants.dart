import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

// URL Launcher
void openURL(String url) => launchUrl(
      Uri.parse(url),
    );

// Tools & Tech
class Techtool {
  static const List<String> KTool = ["Flutter", "Python", "Java", "C++", "SQL"];
  static const List<String> techIcons = [
    "assets/techIcons/flutter.png",
    "assets/techIcons/python-.png",
    "assets/techIcons/java2.png",
    "assets/techIcons/c++-.png",
    "assets/techIcons/sql-.png"
  ];
}
