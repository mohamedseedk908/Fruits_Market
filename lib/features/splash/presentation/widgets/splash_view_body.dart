import 'package:flutter/material.dart';

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
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600),);
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
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
}
