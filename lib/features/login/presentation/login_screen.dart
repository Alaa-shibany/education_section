import 'package:courses/features/login/presentation/components/login_form.dart';
import 'package:courses/features/login/presentation/components/panel.dart';
import 'package:courses/layouts/responsive_layout.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: LoginForm(),
      desktopBody: Row(
        children: [
          Expanded(flex: 2, child: Panel()),
          Expanded(flex: 3, child: LoginForm()),
        ],
      ),
    );
  }
}
