import 'package:bishalprofile/animations/entrance_fader.dart';
import 'package:bishalprofile/configs/app.dart';
import 'package:bishalprofile/configs/configs.dart';
import 'package:bishalprofile/provider/app_provider.dart';
import 'package:bishalprofile/provider/drawer_provider.dart';
import 'package:bishalprofile/provider/scroll_provider.dart';
import 'package:bishalprofile/responsive/responsive.dart';
import 'package:bishalprofile/utils/navbar_utils.dart';
import 'package:bishalprofile/utils/utils.dart';
import 'package:bishalprofile/widgets/arrow_on_top.dart';
import 'package:bishalprofile/widgets/navbar_actions_button.dart';
import 'package:bishalprofile/widgets/navbar_logo.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import "package:velocity_x/velocity_x.dart";
import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
part 'widgets/_navbar_desktop.dart';
part 'widgets/_mobile_drawer.dart';
part 'widgets/_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      drawer: !Responsive.isDesktop(context) ? const _MobileDrawer() : null,
      body: SafeArea(
        child: Stack(
          children: [
            const _Body(),
            const ArrowOnTop(),
            Responsive.isTablet(context) || Responsive.isMobile(context)
                ? const _NavBarTablet()
                : const _NavbarDesktop(),
          ],
        ),
      ),
    );
  }
}
