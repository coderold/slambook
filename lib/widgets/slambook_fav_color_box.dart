import 'package:advmobprog_midterms_tp02_molina/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SlambookFavColorBox extends StatelessWidget {
  final Color color;
  final String label;
  final String data;
  final double fontSize;

  const SlambookFavColorBox({
    super.key,
    required this.color,
    required this.label,
    required this.data,
    required this.fontSize
  });

  Color _getActualColor(String name) {
    switch (name.toLowerCase()) {
      case 'black': return Colors.black;
      case 'blue': return Colors.blue;
      case 'green': return Colors.green;
      default: return Colors.grey;
    }
  }

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
              "$label:", // Parameter used here
              style: GoogleFonts.poppins(
                color: AppTheme.textLight,
                fontSize: 14,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  data, // Parameter used here
                  style: GoogleFonts.rockSalt(
                    color: AppTheme.textLight,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                  )
                ),

                Container(
                  height: fontSize * 2 - 10,
                  width: fontSize * 2 - 10,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: _getActualColor(data),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  
                )
              ]
            )
          )
        ],
      ),
    );
  }
}