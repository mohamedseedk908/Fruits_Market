import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:fruits_market/core/utils/custom_text_style.dart';
import 'package:fruits_market/core/utils/size_config.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.text, this.onTap});
  final String? text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.primaryColors,
        ),
        child: Center(
          child: Text(text!),
        ),
      ),
    );
  }
}

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon({
    super.key,
    this.onTap,
    this.iconData,
    this.text,
    this.color,
  });
  final VoidCallback? onTap;
  final IconData? iconData;
  final String? text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: AppColors.supTitleColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.primaryColors),
        ),
        child: Row(
          children: [
            Icon(
              iconData,
              color: color,
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              text!,
              style: CustomTextStyle.supTitleSize20,
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
