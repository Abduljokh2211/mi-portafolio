import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {

  // colores principales
  static const Color darkBg = Color(0xFF0D1117);
  static const Color cardColor = Color(0xFF161B22);
  static const Color accentBlue = Color(0xFF1F6FEB);
  static const Color textGray = Color(0xFF8B949E);
  static const Color borderColor = Color(0xFF30363D);

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkBg,
    colorScheme: ColorScheme.dark(
      surface: darkBg,
      primary: accentBlue,
      secondary: accentBlue,
    ),
    appBarTheme: AppBarThemeData(
      backgroundColor: cardColor,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: GoogleFonts.inter(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    cardTheme: CardThemeData(
      color: cardColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: borderColor, width: 1),
      ),
    ),
    textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: accentBlue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
    ),
  );
}
