import 'package:flutter/material.dart';
import 'package:bishalprofile/constants.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterMobile extends StatelessWidget {
  const FooterMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.15,
      width: width * 0.1,
      child: Center(
          child: Column(
        //mainAxisSize: MainAxisSize.min,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HStack([
            const Text(
              "Developed in 💙 with ",
            ),
            InkWell(
              onTap: () => openURL("https://flutter.dev/"),
              child: const Text(
                "Flutter",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ]),
          const Text(
            "@Copyright(c)2022 Bishal Mondal. All rights Reserved.",
            style: TextStyle(fontSize: 12.0),
          ),
          const Text(
            "Privacy Policy | Terms Conditions",
            style: TextStyle(fontSize: 12.0),
          ),
        ],
      )),
    );
  }
}
