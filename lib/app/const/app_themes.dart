import 'package:flutter/material.dart';

class AppThemes {
  static const Color primary = Color(0xFFDC0A2D);
  static const Color white = Color(0xFFFFFFFF);
  static const Color greyscaleBackground = Color(0xFFEFEFEF);
  static const Color greyscaleLight = Color(0xFFE0E0E0);
  static const Color greyscaleWireframe = Color(0xFFB8B8B8);
  static const Color greyscaleMedium = Color(0xFF666666);
  static const Color greyscaleDark = Color(0xFF212121);

  static const Map<int, Color> color = {
    50: primary,
    100: primary,
    200: primary,
    300: primary,
    400: primary,
    500: primary,
    600: primary,
    700: primary,
    800: primary,
    900: primary,
  };

  static MaterialColor primarySwatch = MaterialColor(primary.value, color);

  static const headerStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 24);

  static final ThemeData defaultTheme = ThemeData(
      primarySwatch: primarySwatch,
      scaffoldBackgroundColor: primary,
      textTheme: TextTheme(
        // HEADERS
        displayLarge: headerStyle,
        titleLarge: headerStyle.copyWith(fontSize: 10),
        titleMedium: headerStyle.copyWith(fontSize: 14),
        titleSmall: headerStyle.copyWith(fontSize: 12),

        // BODY
        bodyLarge: const TextStyle(fontSize: 14),
        bodyMedium: const TextStyle(fontSize: 12),
        bodySmall: const TextStyle(fontSize: 8),
      ),

      // ICONS
      iconTheme: const IconThemeData(
        color: primary,
      ));
}
