import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Light Theme Config
  static ThemeData get lightTheme {
    final base = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFFD7C8C4),
        brightness: Brightness.light,
        surface: const Color(0xFFd7c8c4),
        onSurface: const Color(0xFFac5712),
        onSurfaceVariant: const Color(0xFFac5712),
        secondary: const Color(0xFF625656),
        surfaceContainerHigh: const Color(0xFF8e7d7d),
      ),

    );

    return base.copyWith(
      textTheme: GoogleFonts.nanumBrushScriptTextTheme(base.textTheme),
    ); 
  }

   // Dark Theme Config
   static ThemeData get darkTheme {
      final base = ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFbe5b27),
          brightness: Brightness.dark,
          onSurface: const Color(0xFFCA5920),
          secondary: const Color(0xFFCA5920),
          surfaceContainerHigh: const Color(0xFF651010),
          onSurfaceVariant: const Color(0xFFccb7b2),
        ),
      );

      return base.copyWith(
        textTheme: GoogleFonts.nanumBrushScriptTextTheme(base.textTheme),
      );
   }
}