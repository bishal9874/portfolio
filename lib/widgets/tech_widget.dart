import 'package:bishalprofile/configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ToolTechWidget extends StatelessWidget {
  final String techName;
  final Image image;

  const ToolTechWidget({Key? key, required this.image, required this.techName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        image,
        Text(
          " $techName ",
          style: context.isMobile ? AppText.l2b : AppText.l1b,
        )
      ],
    );
  }
}
