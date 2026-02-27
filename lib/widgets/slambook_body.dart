import 'package:advmobprog_midterms_tp02_molina/theme/app_theme.dart';
import 'package:advmobprog_midterms_tp02_molina/widgets/slambook_box.dart';
import 'package:advmobprog_midterms_tp02_molina/widgets/slambook_fav_color_box.dart';
import 'package:advmobprog_midterms_tp02_molina/widgets/slambook_photobox.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SlambookBody extends StatelessWidget {
  final Map<String, String> profileData;

  const SlambookBody({super.key, required this.profileData});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    bool isScreenSmol;

    if (currentWidth < 450) {
      isScreenSmol = true;
    } else {
      isScreenSmol = false;
    }

    String name = profileData["Full name"]!;
    String nickname = profileData["Nickname"]!;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //fullname & nickname
        Center(
          child: FractionallySizedBox(
            widthFactor: 0.9,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.only(top: 20, bottom: 20),
              decoration: BoxDecoration(
                color: AppTheme.deepRed,
                border: Border.all(color: Colors.black, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(3, 3),
                    blurRadius: 0,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "My Name Is:",
                    style: GoogleFonts.poppins(
                      color: AppTheme.textLight,
                      fontSize: isScreenSmol ? 10 : 14, 
                    ),
                  ),
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rockSalt(
                      color: AppTheme.textLight,
                      fontSize: isScreenSmol ? 16 : 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '" $nickname "',
                    style: GoogleFonts.rockSalt(
                      color: AppTheme.textLight,
                      fontSize: isScreenSmol ? 12 : 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 2,
              child: SlambookBox(
                color: AppTheme.darkCyan,
                label: "Birthday",
                data: profileData["Birthday"]!,
                fontSize: isScreenSmol ? 12 : 18
              ),
            ),
            Expanded(
              flex: 1,
              child: SlambookBox(
                color: AppTheme.mutedIndigo,
                label: "Age",
                data: profileData["Age"]!,
                fontSize: isScreenSmol ? 12 : 18,
              ),
            ),
          ],
        ),

        Row(
          children: [
            Expanded(
              flex: 1,
              child: SlambookFavColorBox(
                color: AppTheme.midnightNavy,
                label: "Favorite Color",
                data: profileData["Favorite color"]!,
                fontSize: isScreenSmol ? 12 : 18,
              ),
            ),
            Expanded(
              flex: 1,
              child: SlambookBox(
                color: AppTheme.charcoalForest,
                label: "Zodiac Sign",
                data: profileData["Zodiac Sign"]!,
                fontSize: isScreenSmol ? 11 : 16, 
              ),
            ),
            Expanded(
              flex: 1,
              child: SlambookBox(
                color: AppTheme.midnightNavy,
                label: "Favorite Food",
                data: profileData["Favorite food"]!,
                fontSize: isScreenSmol ? 11 : 16, 
              ),
            ),
          ],
        ),

        Row(
          children: [
            Expanded(
              flex: 1,
              child: SlambookBox(
                color: AppTheme.darkPlum,
                label: "Favorite Song",
                data: profileData["Favorite song"]!,
                fontSize: isScreenSmol ? 11 : 16, 
              ),
            ),
            Expanded(
              flex: 1,
              child: SlambookBox(
                color: AppTheme.espressoBean,
                label: "Favorite Movie",
                data: profileData["Favorite movie"]!,
                fontSize: isScreenSmol ? 9 : 16, 
              ),
            ),
            Expanded(
              flex: 1,
              child: SlambookBox(
                color: AppTheme.gunmetalSlate,
                label: "Favorite Hobby",
                data: profileData["Favorite hobby"]!,
                fontSize: isScreenSmol ? 11 : 16, 
              ),
            ),
          ],
        ),

        if (name != "Jeff Matthew Molina")
          Row(
            children: [
              Expanded(
                child: SlambookPhotoBox(
                  color: AppTheme.deepRed,
                  label: "Favorite Photo",
                  imagePath: profileData["Favorite pic"]!,
                ),
              ),
              Expanded(
                child: SlambookPhotoBox(
                  color: AppTheme.deepRed,
                  label: "Favorite Gala",
                  imagePath: profileData["Favorite gala"]!,
                ),
              ),
            ],
          ),
        if (name == "Jeff Matthew Molina")
          Row(children: [
            Expanded(
              child: SlambookPhotoBox(
                color: AppTheme.deepRed,
                label: "Eto ako",
                imagePath: profileData["Eto ako"]!,
              ),
            ),
          ]),
      ],
    );
  }
}