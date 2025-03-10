import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/size_config.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.primaryColors,
      ),
      child: Center(
        child: Text(text!),
      ),
    );
  }
}
