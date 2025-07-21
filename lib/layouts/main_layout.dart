import 'package:courses/shared/components/language_switcher.dart';
import 'package:courses/shared/components/theme_switcher.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainLayout extends StatelessWidget {
  MainLayout({super.key, required this.body, this.extendBody = true});
  final Widget body;
  bool extendBody;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: extendBody,
      appBar: AppBar(actions: [ThemeSwitcher(), LanguageSwitcher()]),
      body: body,
    );
  }
}
