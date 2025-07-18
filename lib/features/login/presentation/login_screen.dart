import 'package:courses/shared/components/theme_switcher.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(actions: [ThemeSwitcher()]),
      body: Column(
        children: [Container(height: 100, width: 100, color: Colors.white)],
      ),
    );
  }
}
