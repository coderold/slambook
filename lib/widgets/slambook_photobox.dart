import 'package:advmobprog_midterms_tp02_molina/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SlambookPhotoBox extends StatelessWidget {
  final Color color;
  final String label;
  final String imagePath;

  const SlambookPhotoBox({
    super.key,
    required this.color,
    required this.label,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black, width: 2),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            offset: Offset(4, 4),
            blurRadius: 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$label:",
            style: GoogleFonts.poppins(
              color: AppTheme.textLight,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 10),
          
          Center(
            child: Container(
              constraints: BoxConstraints(

                maxHeight: MediaQuery.of(context).size.height * 0.2, 
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover, 
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}