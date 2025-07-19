import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // ١. قم باستيراد الحزمة
import 'app_colors.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryLight,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme).apply(
      bodyColor: AppColors.onTextLight,
      displayColor: AppColors.onTextLight,
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryLight,
      secondary: AppColors.primaryLight,
      background: AppColors.backgroundLight,
      surface: AppColors.surfaceLight,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onBackground: AppColors.onTextLight,
      onSurface: AppColors.onTextLight,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundLight.withOpacity(0.8),
      elevation: 0,
      titleTextStyle: GoogleFonts.poppins(
        color: AppColors.primaryLight,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: AppColors.primaryLight),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryLight,
        foregroundColor: Colors.white,
        textStyle: GoogleFonts.poppins(fontWeight: FontWeight.w600),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryDark,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme).apply(
      bodyColor: AppColors.onTextDark,
      displayColor: AppColors.onTextDark,
    ),
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryDark,
      secondary: AppColors.primaryDark,
      background: AppColors.backgroundDark,
      surface: AppColors.surfaceDark,
      onPrimary: AppColors.onTextDark,
      onSecondary: AppColors.onTextDark,
      onBackground: AppColors.onTextDark,
      onSurface: AppColors.onTextDark,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundDark.withOpacity(0.8),
      elevation: 0,
      titleTextStyle: GoogleFonts.poppins(
        color: AppColors.onTextDark,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: AppColors.surfaceLight),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryDark,
        foregroundColor: AppColors.onTextDark,
        textStyle: GoogleFonts.poppins(fontWeight: FontWeight.w600),
      ),
    ),
  );
}
