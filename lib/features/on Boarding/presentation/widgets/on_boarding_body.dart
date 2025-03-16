import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/core/widgets/custom_button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../authentication/presentation/pages/login/login_view.dart';
import 'custom_page_view.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: SizeConfig.defaultSize! * 10,
            child: DotsIndicator(
              dotsCount: 3,
              position: 0,
            ),
          ),
          CustomPageView(),
          Positioned(
            top: SizeConfig.defaultSize! * 5,
            right: 23,
            child: Text(
              "Skip",
              style: TextStyle(
                fontSize: 14,
                color: AppColors.primaryColors,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: SizeConfig.defaultSize! * 5,
            right: SizeConfig.defaultSize! * 5,
            bottom: SizeConfig.defaultSize! * 4,
            child: CustomGeneralButton(
              onTap: () {
                Get.to(() => LoginView(),
                    transition: Transition.rightToLeft,
                    duration: Duration(milliseconds: 600));
              },
              text: "Next",
            ),
          ),
        ],
      ),
    );
  }
}
