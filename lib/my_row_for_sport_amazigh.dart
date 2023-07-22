
import 'package:calcul_moyen/amazigh_and_sport_pro.dart';
import 'package:calcul_moyen/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


class MyRowSportAmazigh extends StatefulWidget {
  final String amazighOrSportWidget;
  final  String textToDisplay;
  const MyRowSportAmazigh(
      {super.key,
      required this.amazighOrSportWidget,
      required this.textToDisplay});

  @override
  State<MyRowSportAmazigh> createState() => _MyRowSportAmazighState();
}

class _MyRowSportAmazighState extends State<MyRowSportAmazigh> {
  bool rowColor = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (widget.amazighOrSportWidget == 'sport') {
            context.read<AmazighAndSportPro>().changeSport();
            rowColor = context.read<AmazighAndSportPro>().sport;
          } else {
            context.read<AmazighAndSportPro>().changeAmazigh();
            rowColor = context.read<AmazighAndSportPro>().langAmazigh;
          }
        });
      },
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppTheme.my_green),
            borderRadius: BorderRadius.circular(5),
            color: rowColor ? AppTheme.my_green : Colors.transparent,
          ),
          padding: const EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * 0.07,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              rowColor
                  ? const Icon(
                      size: 30,
                      Icons.check_circle_outline,
                      color: Colors.white,
                    )
                  : const Icon(
                      size: 30,
                      Icons.circle_outlined,
                      color: AppTheme.my_green,
                    ),
              Text(widget.textToDisplay,
                  style: GoogleFonts.carattere(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: rowColor ? Colors.white : AppTheme.my_green,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
