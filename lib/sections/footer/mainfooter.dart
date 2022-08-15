import 'package:bishalprofile/responsive/responsive.dart';
import 'package:bishalprofile/sections/footer/footerMobile.dart';
import 'package:bishalprofile/widgets/footer.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FooterPart extends StatelessWidget {
  const FooterPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: FooterMobile(), tablet: FooterMobile(), desktop: Footer());
  }
}
