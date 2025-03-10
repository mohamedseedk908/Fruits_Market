import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/features/on%20Boarding/presentation/widgets/on_boarding_body.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );
    fadingAnimation =
        Tween<double>(begin: .3, end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        children: [
          Spacer(),
          FadeTransition(
            opacity: fadingAnimation!,
            child: Text(
              "Fruits Market",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 51,
                  color: Color(
                    0xffffffff,
                  ),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          Image.asset("assets/images/splash_view_image.png"),
        ],
      ),
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => OnBoardingBody(), transition: Transition.fade);
    });
  }
}
