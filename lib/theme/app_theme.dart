import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static Color _hsl(double h, double s, double l) {
    return HSLColor.fromAHSL(1.0, h, s / 100, l / 100).toColor();
  }


  static final Color bg = _hsl(21, 42, 88); 
  
  static final Color text = _hsl(172, 21, 20);
  static final Color textLight = _hsl(21, 42, 88); 
  
  static final Color primary = _hsl(184, 66, 28);
  
  static final Color secondary = _hsl(7, 57, 49);
  
  static final Color highlight = _hsl(6, 53, 31);

  static final Color bgLight = _hsl(21, 35, 82); 
  static final Color bgDark = _hsl(240, 27, 18); 
  static final Color textMuted = _hsl(174, 21, 20);
  
  //colors
  static final Color darkCyan = _hsl(184, 66, 28);
  static final Color deepRed = _hsl(6, 57, 49);
  static final Color softBlue = _hsl(196, 26, 75);
  static final Color mutedIndigo = _hsl(232, 17, 35);
  static final Color midnightNavy = _hsl(220, 35, 15);
static final Color charcoalForest = _hsl(150, 25, 12);
static final Color darkPlum = _hsl(280, 20, 18);
static final Color espressoBean = _hsl(20, 25, 14);
static final Color gunmetalSlate = _hsl(210, 15, 22);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: bg,
      colorScheme: ColorScheme.light(
        primary: primary,
        secondary: secondary,
        surface: bgLight,
        onSurface: text,
        onPrimary: bg, // Light text on dark buttons
      ),
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.permanentMarker(
          color: text,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: GoogleFonts.permanentMarker(
          color: text,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        headlineSmall: GoogleFonts.permanentMarker(
          color: text,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: GoogleFonts.permanentMarker(
          color: text,
          fontSize: 18,
        ),
        bodyMedium: GoogleFonts.permanentMarker(
          color: textMuted,
        ),
      ),

    );
  }
}