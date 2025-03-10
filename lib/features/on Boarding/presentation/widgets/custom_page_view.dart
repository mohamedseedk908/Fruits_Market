import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/features/on%20Boarding/presentation/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          image: AppAssets.onBoarding1,
          text: "E Shopping",
          supTitle: "Explore Top Organic Fruits & Grab Them",
        ),
        PageViewItem(
          image: AppAssets.onBoarding2,
          text: "E Shopping",
          supTitle: "Explore Top Organic Fruits & Grab Them",
        ),
        PageViewItem(
          image: AppAssets.onBoarding3,
          text: "E Shopping",
          supTitle: "Explore Top Organic Fruits & Grab Them",
        ),
      ],
    );
  }
}
