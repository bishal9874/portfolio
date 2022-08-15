import 'package:bishalprofile/animations/bottom_animation.dart';
import 'package:bishalprofile/configs/configs.dart';
import 'package:bishalprofile/utils/contact_utils.dart';
import 'package:bishalprofile/widgets/contact_card.dart';
import 'package:bishalprofile/widgets/custom_text_heading.dart';
import 'package:bishalprofile/widgets/project_card.dart';
import 'package:flutter/material.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.all(1, 1),
      child: Column(
        children: [
          const CustomSectionHeading(
            text: "\nGet in Touch",
          ),
          const CustomSectionSubHeading(
            text: "Let's build something together :)\n\n",
          ),
          Space.y!,
          Wrap(
              alignment: WrapAlignment.center,
              runSpacing: AppDimensions.normalize(10),
              children: ContactUtils.contactIcon
                  .asMap()
                  .entries
                  .map((e) => WidgetAnimator(
                        child: ContactCard(
                          contactIconData: e.value,
                          contactTitle: ContactUtils.titles[e.key],
                          contactDescription: ContactUtils.details[e.key],
                        ),
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
