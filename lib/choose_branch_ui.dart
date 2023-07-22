

import 'package:calcul_moyen/amazigh_and_sport_pro.dart';
import 'package:calcul_moyen/app_theme.dart';
import 'package:calcul_moyen/branch.dart';
import 'package:calcul_moyen/my_gesture_detector.dart';
import 'package:calcul_moyen/my_row_for_sport_amazigh.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';



class ChooseBranchUI extends StatefulWidget {
  const ChooseBranchUI({super.key});

  @override
  State<ChooseBranchUI> createState() => _ChooseBranchUIState();
}

class _ChooseBranchUIState extends State<ChooseBranchUI> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.my_green,
        title: Center(
            child: Text(
          'حساب المعدل',
          style: GoogleFonts.carattere(fontSize: 20),
        )),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.info))],
      ),
      body: ListView(
        children: [
        const   MyRowSportAmazigh(
              amazighOrSportWidget: 'amazigh',
              textToDisplay: 'هل انت معني باللغة الامازيغية'),
         const MyRowSportAmazigh(
              amazighOrSportWidget: 'sport',
              textToDisplay: 'هل انت معني  بالتربية البدنية '),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: GridView.count(
              childAspectRatio: 1.2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              padding: const EdgeInsets.all(5),
              crossAxisCount: 2, // Number of columns
              children: <Widget>[
                for (Branch branch in listBranches)
                  MyGestureDetector(
                      branch: branch.branchName,
                      sport: context.read<AmazighAndSportPro>().sport,
                      langAmazigh:
                          context.read<AmazighAndSportPro>().langAmazigh,
                      buildContext: context,
                      text: branch.textToDisplay,
                      pathToImage: branch.pathToImage),

                // Add more items as needed
              ],
            ),
          )
        ],
      ),
    );
  }
  final List<Branch> listBranches = [
  Branch(
    branchName: 'm',
    textToDisplay: ' رياضيات',
    pathToImage: 'assets/icons/math.webp',
  ),
  Branch(
    branchName: 'mt',
    textToDisplay: ' تقني رياضي',
    pathToImage: 'assets/icons/mtech.webp',
  ),
  Branch(
    branchName: 'si',
    textToDisplay: 'علوم تجريبية',
    pathToImage: 'assets/icons/sience.webp',
  ),
  Branch(
    branchName: 'le',
    textToDisplay: ' لغات اجنبية',
    pathToImage: 'assets/icons/langue.webp',
  ),
  Branch(
    branchName: 'ge',
    textToDisplay: ' تسير و اقتصاد',
    pathToImage: 'assets/icons/gestion.webp',
  ),
  Branch(
    branchName: 'lp',
    textToDisplay: ' اداب و فلسفة',
    pathToImage: 'assets/icons/philosophy.webp',
  ),
];
}
