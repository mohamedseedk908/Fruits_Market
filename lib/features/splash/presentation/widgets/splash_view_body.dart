import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Spacer(),
          Text(
            "Fruits Market",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 51,
              color: Color(
                0xffffffff,
              ),
              fontWeight: FontWeight.bold
            ),
          ),
          Spacer(),
          Image.asset("assets/images/splash_view_image.png"),
        ],
      ),
    );
  }
}
