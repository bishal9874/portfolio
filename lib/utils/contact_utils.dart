import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUtils {
  static const List<IconData> contactIcon = [
    Icons.home,
    Icons.phone,
    Icons.mail,
  ];

  static const List<String> titles = [
    "Location",
    "Phone",
    "Email",
  ];

  static const List<String> details = [
    "Kolkata, India",
    "9874713473",
    "bishalofficial987@gmail.com",
  ];
  // static const List<String> url = [
  //   "https://www.geeksforgeeks.org/",
  //   "https://www.geeksforgeeks.org/",
  //   "https://www.geeksforgeeks.org/"
  // ];
  // static launchURLBrowser() async {
  //   var url = Uri.parse("https://www.geeksforgeeks.org/");
  //   if (await canLaunchUrl(url)) {
  //     await launchUrl(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
}
