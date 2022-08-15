import 'package:bishalprofile/configs/configs.dart';
import 'package:bishalprofile/constants.dart';
import 'package:bishalprofile/utils/about_utils.dart';
import 'package:bishalprofile/utils/utils.dart';
import 'package:bishalprofile/utils/work_utils.dart';
import 'package:bishalprofile/widgets/about_me_data.dart';
import 'package:bishalprofile/widgets/community_button.dart';
import 'package:bishalprofile/widgets/custom_text_heading.dart';
import 'package:bishalprofile/widgets/tech_widget.dart';
import 'package:flutter/foundation.dart';

import 'package:universal_html/html.dart' as html;

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: Space.h,
      child: Column(
        children: [
          const CustomSectionHeading(
            text: '\nAbout Me',
          ),
          const CustomSectionSubHeading(
            text: 'Get to know me :)',
          ),
          Space.y1!,
          Image.asset(
            StaticUtils.mobilePhoto,
            height: height * 0.27,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Who am I?",
              style: AppText.b2!.copyWith(
                color: AppTheme.c!.primary,
              ),
            ),
          ),
          Space.y1!,
          Text(
            AboutUtils.aboutMeHeadline,
            style: AppText.b2b!.copyWith(
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            AboutUtils.aboutMeDetail,
            style: AppText.l1!.copyWith(
              height: 2,
              letterSpacing: 1.1,
              fontFamily: 'Montserrat',
            ),
          ),
          Space.y!,
          // Divider(
          //   color: Colors.grey[800],
          //   thickness: AppDimensions.normalize(0.5),
          // ),
          Space.y!,
          Text(
            'Technologies I have worked with:',
            style: AppText.l1!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Space.y!,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: Techtool.KTool.asMap()
                .entries
                .map((e) => ToolTechWidget(
                      techName: e.value,
                      image: Image.asset(
                        Techtool.techIcons[e.key],
                        width: context.isMobile ? 12.0 : 30,
                        height: context.isMobile ? 12.0 : 25,
                        fit: BoxFit.fill,
                      ),
                    ))
                .toList(),
          ),
          Space.y!,
          // Divider(
          //   color: Colors.grey[800],
          //   thickness: AppDimensions.normalize(0.5),
          // ),
          SizedBox(
            height: height * 0.02,
          ),
          const AboutMeData(
            data: "Name",
            information: "Bishal Mondal",
          ),
          const AboutMeData(
            data: "Email",
            information: "bishalofficial987@gmail.com",
          ),
          Space.y!,
          OutlinedButton(
              child: const Text("Resume"),
              onPressed: () {
                // kIsWeb
                //     ? html.window.open(StaticUtils.resume, "pdf")
                //     : openURL(StaticUtils.resume);
              }),
          Space.y!,
          Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: WorkUtils.logos
                  .asMap()
                  .entries
                  .map(
                    (e) => CommunityIconBtn(
                      icon: e.value,
                      link: WorkUtils.communityLinks[e.key],
                      height: WorkUtils.communityLogoHeight[e.key],
                    ),
                  )
                  .toList()),
        ],
      ),
    );
  }
}
