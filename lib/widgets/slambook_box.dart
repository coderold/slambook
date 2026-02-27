import 'package:advmobprog_midterms_tp02_molina/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SlambookBox extends StatelessWidget {
  final Color color;
  final String label;
  final String data;
  final double fontSize;

  const SlambookBox({
    super.key,
    required this.color,
    required this.label,
    required this.data,
    required this.fontSize
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color, // Parameter used here
        border: Border.all(color: Colors.black, width: 2),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            offset: Offset(3, 3),
            blurRadius: 0,
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "$label:", 
              style: GoogleFonts.poppins(
                color: AppTheme.textLight,
                fontSize: 14,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              data, // Parameter used here
              style: GoogleFonts.rockSalt(
                color: AppTheme.textLight,
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}