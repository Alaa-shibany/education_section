import 'package:courses/shared/components/language_switcher.dart';
import 'package:courses/shared/components/theme_switcher.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key, required this.body});
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(actions: [ThemeSwitcher(), LanguageSwitcher()]),
      body: body,
    );
  }
}
