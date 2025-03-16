import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../complet_information/complete_information_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return
        Column(
          children: [
            SizedBox(height: 10),
            SizedBox(
              child: Image.asset("assets/images/logo.png"),
              height: SizeConfig.defaultSize! * 17,
            ),
            Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 51,
                  color: const Color(0xff69a03a),
                ),
                children: [
                  TextSpan(
                    text: 'F',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: 'ruit Market',
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
            Expanded(child: SizedBox()),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CustomButtonWithIcon(
                      color: Color(0xFFdb3236),
                      iconData: FontAwesomeIcons.googlePlusG,
                      text: 'Log in with ',
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CustomButtonWithIcon(
                      onTap: () {
                        Get.to(() => CompleteInformationView(),
                            duration: Duration(milliseconds: 500),
                            transition: Transition.rightToLeft);
                      },
                      color: Color(0xFF4267B2),
                      iconData: FontAwesomeIcons.facebookF,
                      text: 'Log in with ',
                    ),
                  ),
                )
              ],
            ),
            Expanded(child: SizedBox()),
          ],
        );
  }
}
