

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primary = Color(0xFFFDCF4A);
  static const Color primaryDark = Color(0xFFFFC41C);
  static const Color my_green = Color(0xFF329F4F);
  static const Color bgColor = Colors.amber;
  static const Color iconColor = Colors.lightBlue;

  static Icon fileIcon = const Icon(
    Icons.picture_as_pdf,
    color: AppTheme.iconColor,
  );

  static Icon pauseIcon =const  Icon(
  CupertinoIcons.pause_fill,
  color: AppTheme.iconColor,
  );

  static Icon checkIcon= const Icon(
  CupertinoIcons.checkmark_alt,
  color: AppTheme.iconColor,
  );

  static Icon downloadIcon= const Icon(
  CupertinoIcons.cloud_download,
  color: AppTheme.iconColor,
  );
  static Icon playIcon= const Icon(
  CupertinoIcons.play_arrow_solid,
  color: AppTheme.iconColor,
  );
  static TextStyle headline = GoogleFonts.stylish(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );



  // Subtitle style
  static TextStyle subtitle = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.italic,
    color: Colors.blue,
  );

  // Body text style
  static TextStyle bodyText = GoogleFonts.lato(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 1.2,
  );

  // Button text style
  static TextStyle buttonText = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.black87,
  );
}

///for the background of the app
///
Widget myBackGround = Container(
    decoration: const BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      // Colors.redAccent,
      // // Colors.purple,
      // Colors.purple
      AppTheme.primary,
      AppTheme.primary
    ],
  ),
));
