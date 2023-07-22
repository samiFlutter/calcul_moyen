import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class MyGestureDetector extends StatelessWidget {
  final BuildContext buildContext;
  final String branch;
  final bool sport;
  final bool langAmazigh;
  final String text;
  final String pathToImage;
  const MyGestureDetector({
    super.key,
    required this.branch,
    required this.sport,
    required this.langAmazigh,
    required this.buildContext,
    required this.text,
    required this.pathToImage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go('/cal_moyen/$branch');
      },
      child: Card(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(5)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              pathToImage,
              height: 50,
            ),
            Text(text,
                style: GoogleFonts.carattere(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ))
          ]),
        ),
      ),
    );
  }
}
