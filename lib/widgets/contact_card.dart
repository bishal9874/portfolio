import 'package:bishalprofile/configs/configs.dart';
import 'package:bishalprofile/constants.dart';
import 'package:bishalprofile/provider/app_provider.dart';
import 'package:bishalprofile/utils/contact_utils.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactCard extends StatefulWidget {
  final String? banner;
  final String? contactIcon;
  final String contactTitle;
  final String contactDescription;
  final IconData? contactIconData;

  const ContactCard({
    Key? key,
    this.banner,
    this.contactIcon,
    this.contactIconData,
    required this.contactTitle,
    required this.contactDescription,
  }) : super(key: key);
  @override
  ContactCardState createState() => ContactCardState();
}

class ContactCardState extends State<ContactCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: Container(
        margin: Space.h,
        padding: Space.all(),
        width: AppDimensions.normalize(150),
        height: AppDimensions.normalize(100),
        decoration: BoxDecoration(
          color: appProvider.isDark ? Colors.grey[900] : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: isHover
              ? [
                  BoxShadow(
                    color: AppTheme.c!.primary!.withAlpha(100),
                    blurRadius: 12.0,
                    offset: const Offset(0.0, 0.0),
                  )
                ]
              : [
                  BoxShadow(
                    color: Colors.black.withAlpha(100),
                    blurRadius: 12.0,
                    offset: const Offset(0.0, 0.0),
                  )
                ],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.contactIcon != null
                    ? (width > 1135 || width < 950)
                        ? Image.asset(
                            widget.contactIcon!,
                            height: height * 0.05,
                          )
                        : Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                widget.contactIcon!,
                                height: height * 0.02,
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                widget.contactTitle,
                                style: AppText.b2b,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )
                    : Container(),
                widget.contactIconData != null
                    ? Icon(
                        widget.contactIconData,
                        color: AppTheme.c!.primary!,
                        size: height * 0.1,
                      )
                    : Container(),
                (width > 1135 || width < 950)
                    ? SizedBox(
                        height: height * 0.02,
                      )
                    : const SizedBox(),
                (width > 1135 || width < 950)
                    ? Text(
                        widget.contactTitle,
                        style: AppText.b2b,
                        textAlign: TextAlign.center,
                      )
                    : Container(),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  widget.contactDescription,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
              ],
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: isHover ? 0.0 : 1.0,
              child: FittedBox(
                fit: BoxFit.fill,
                child: widget.banner != null
                    ? Image.asset(
                        widget.banner!,
                      )
                    : Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
