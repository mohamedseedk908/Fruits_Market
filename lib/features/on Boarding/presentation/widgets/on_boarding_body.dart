import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/core/widgets/custom_button.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
          bottom: SizeConfig.defaultSize! * 5,
          child: CustomButton(
            text: "Next",
          ),
        ),
      ],
    );
  }
}
