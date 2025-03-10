import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/splash/presentation/splash_view.dart';
void main() {
  runApp(const FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  const FruitsMarket({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashView(),
    );
  }
}

