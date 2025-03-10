import 'package:flutter/material.dart';
import 'package:fruits_market/features/splash/presentation/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF69A03A),
      body:SplashViewBody() ,
    );
  }
}
