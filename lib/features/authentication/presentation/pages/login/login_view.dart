import 'package:flutter/material.dart';
import 'package:fruits_market/features/authentication/presentation/pages/login/widget/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginViewBody(),
    );
  }
}
