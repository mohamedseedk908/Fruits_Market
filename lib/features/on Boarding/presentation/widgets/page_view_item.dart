import 'package:flutter/cupertino.dart';
import 'package:fruits_market/core/utils/custom_text_style.dart';
import 'package:fruits_market/core/utils/size_config.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.text,
    required this.supTitle,
  });
  final String image;
  final String text;
  final String supTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.defaultSize!*10,),
        SizedBox(height: SizeConfig.defaultSize!*13,child: Image.asset(image)),
        SizedBox(height: SizeConfig.defaultSize!*1,),
        Text(text,style: CustomTextStyle.supTitleSize20,textAlign: TextAlign.center,),
        SizedBox(height: SizeConfig.defaultSize!*1,),
        Text(supTitle,style: CustomTextStyle.supTitleSize20,textAlign: TextAlign.center,),
      ],
    );
  }
}
