import 'package:flutter/material.dart';
import 'package:bishalprofile/constants.dart';
import 'package:velocity_x/velocity_x.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.07,
      width: width,
      child: Center(
        child: Row(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            ),
            const Text(
              "Privacy Policy | Terms Conditions",
            ),
          ],
        ),
      ),
    );
  }
}
