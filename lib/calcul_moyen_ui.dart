
import 'package:calcul_moyen/amazigh_and_sport_pro.dart';
import 'package:calcul_moyen/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';


class CalculMoyenUI extends StatefulWidget {
  String branch;

  CalculMoyenUI({
    super.key,
    required this.branch,
  });

  @override
  State<CalculMoyenUI> createState() => _CalculMoyenUIState();
}

class _CalculMoyenUIState extends State<CalculMoyenUI> {
  List<Matier> si = [
    Matier(name: 'علوم طبيعية', coffision: 6),
    Matier(name: ' فيزياء', coffision: 5),
    Matier(name: ' رياضيات', coffision: 5),
    Matier(name: ' عربية', coffision: 3),
    Matier(name: ' فرنسية', coffision: 2),
    Matier(name: ' انجليزية', coffision: 2),
    Matier(name: ' فلسفة', coffision: 2),
    Matier(name: ' علوم اسلامية', coffision: 2),
    Matier(name: 'تاريخ وجغرافيا', coffision: 2),
    Matier(name: ' امازيغية', coffision: 2),
    Matier(name: '  تربية بدنية', coffision: 1),
  ];
  List<Matier> m = [
    Matier(name: 'علوم طبيعية', coffision: 2),
    Matier(name: ' فيزياء', coffision: 6),
    Matier(name: ' رياضيات', coffision: 7),
    Matier(name: ' عربية', coffision: 3),
    Matier(name: ' فرنسية', coffision: 2),
    Matier(name: ' انجليزية', coffision: 2),
    Matier(name: ' فلسفة', coffision: 2),
    Matier(name: ' علوم اسلامية', coffision: 2),
    Matier(name: 'تاريخ وجغرافيا', coffision: 2),
    Matier(name: ' امازيغية', coffision: 2),
    Matier(name: '  تربية بدنية', coffision: 1),
  ];
  List<Matier> mt = [
    Matier(name: 'تكنولوجيا', coffision: 7),
    Matier(name: ' فيزياء', coffision: 6),
    Matier(name: ' رياضيات', coffision: 6),
    Matier(name: ' عربية', coffision: 3),
    Matier(name: ' فرنسية', coffision: 2),
    Matier(name: ' انجليزية', coffision: 2),
    Matier(name: ' فلسفة', coffision: 2),
    Matier(name: ' علوم اسلامية', coffision: 2),
    Matier(name: 'تاريخ وجغرافيا', coffision: 2),
    Matier(name: ' امازيغية', coffision: 2),
    Matier(name: '  تربية بدنية', coffision: 1),
  ];

  List<Matier> ge = [
    Matier(name: 'تسير محاسبي ومالي', coffision: 6),
    Matier(name: 'اقتصاد و مناجمنت', coffision: 5),
    Matier(name: ' رياضيات', coffision: 5),
    Matier(name: ' قانون', coffision: 2),
    Matier(name: ' عربية', coffision: 3),
    Matier(name: ' فرنسية', coffision: 2),
    Matier(name: ' انجليزية', coffision: 2),
    Matier(name: ' فلسفة', coffision: 2),
    Matier(name: ' علوم اسلامية', coffision: 2),
    Matier(name: 'تاريخ وجغرافيا', coffision: 4),
    Matier(name: ' امازيغية', coffision: 2),
    Matier(name: '  تربية بدنية', coffision: 1),
  ];

  List<Matier> lp = [
    Matier(name: ' رياضيات', coffision: 2),
    Matier(name: ' عربية', coffision: 6),
    Matier(name: ' فرنسية', coffision: 3),
    Matier(name: ' انجليزية', coffision: 3),
    Matier(name: ' فلسفة', coffision: 6),
    Matier(name: ' علوم اسلامية', coffision: 2),
    Matier(name: 'تاريخ وجغرافيا', coffision: 4),
    Matier(name: ' امازيغية', coffision: 2),
    Matier(name: '  تربية بدنية', coffision: 1),
  ];

  List<Matier> le = [
    Matier(name: ' رياضيات', coffision: 2),
    Matier(name: ' عربية', coffision: 5),
    Matier(name: ' فرنسية', coffision: 5),
    Matier(name: ' انجليزية', coffision: 5),
    Matier(name: 'لغة اجنبية 3', coffision: 4),
    Matier(name: ' فلسفة', coffision: 2),
    Matier(name: ' علوم اسلامية', coffision: 2),
    Matier(name: 'تاريخ وجغرافيا', coffision: 2),
    Matier(name: ' امازيغية', coffision: 2),
    Matier(name: '  تربية بدنية', coffision: 1),
  ];

  final TextEditingController _textController = TextEditingController();
  List<Matier> listMatiere = [];

  String branchToDisplay = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    switch (widget.branch) {
      case 'm':
        listMatiere = m;

        branchToDisplay = 'رياضيات';
        break;
      case 'mt':
        listMatiere = mt;

        branchToDisplay = 'تقني رياضي';
        break;
      case 'si':
        listMatiere = si;

        branchToDisplay = 'علوم تجريبية';
        break;
      case 'ge':
        listMatiere = ge;

        branchToDisplay = 'تسير و اقتصاد';
        break;
      case 'lp':
        listMatiere = lp;

        branchToDisplay = 'اداب وفلسفة';
        break;
      case 'le':
        listMatiere = le;

        branchToDisplay = 'لغات اجنبية';
        break;
      default:
        listMatiere = [];
    }

    if (!context.read<AmazighAndSportPro>().sport) {
      if (!context.read<AmazighAndSportPro>().langAmazigh) {
        listMatiere.removeLast();
        listMatiere.removeLast();
      } else {
        listMatiere.removeLast();
      }
    } else {
      if (!context.read<AmazighAndSportPro>().langAmazigh) {
        listMatiere.removeAt(listMatiere.length - 2);
      }
    }

    someCoffisionController = someCoffision(listMatiere).toString();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  TextEditingController moyenController = TextEditingController(text: '0.0');
  String someCoffisionController = '01';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppTheme.my_green,
          body: ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Card(
                        child: SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Center(
                                child: Text(
                              '${moyenController.text}=معدل',
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.green),
                            )))),
                    Card(
                        child: SizedBox(
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Center(
                                child: Text(
                              someCoffisionController,
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.green),
                            )))),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Center(
                          child: Text(
                            branchToDisplay + ':' + 'شعبة ',
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView(
                  children: createRow(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  createRow() {
    List<Widget> tempList = [];

    for (var matier in listMatiere) {
      tempList.add(Card(
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Card(
                  child: SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Center(
                          child: Text(
                        matier.someController.text,
                        style:
                            const TextStyle(fontSize: 20, color: Colors.green),
                      )))),
              Card(
                  child: SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Center(
                          child: Text(
                        matier.coffision.toString(),
                        style:
                            const TextStyle(fontSize: 20, color: Colors.green),
                      )))),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color:
                              matier.isValideValue ? Colors.green : Colors.red),
                      borderRadius: BorderRadius.circular(0)),
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: TextField(
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'^[0-9\.]+$'))
                    ],
                    controller: matier.valueController,
                    textDirection: TextDirection.ltr,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    decoration: const InputDecoration(
                      hintText: '00/20',
                      contentPadding: EdgeInsets.all(8),
                      hintStyle: TextStyle(fontSize: 20, color: Colors.green),
                    ),
                    onChanged: (value) {
                      setState(() {
                        try {
                          matier.someController.text =
                              (double.tryParse(matier.valueController.text)! *
                                      matier.coffision)
                                  .toString();

                          matier.isValide();
                        } catch (e) {
                          print(e);
                        }
                      });
                      calculMoyen(listMatiere);
                    },
                  ),
                ),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Center(
                    child: Text(
                      matier.name,
                      textDirection: TextDirection.ltr,
                      style: const TextStyle(fontSize: 20, color: Colors.green),
                    ),
                  )),
            ],
          ),
        ),
      ));
    }

    return tempList;
  }

  int someCoffision(List<Matier> listMatier) {
    int some = 0;
    for (var matier in listMatier) {
      some = some + matier.coffision;
    }

    return some;
  }

  void calculMoyen(List<Matier> listMatier) {
    double someValue = 0;
    for (var matier in listMatier) {
      try {
        someValue = someValue + double.tryParse(matier.someController.text)!;
      } catch (e) {
        print(e);
      }
    }
    setState(() {
      try {
        moyenController.text =
            (someValue / int.tryParse(someCoffisionController)!)
                .toStringAsFixed(2);
      } catch (e) {
        print(e);
      }
    });
  }
}

class Matier {
  String name;

  int coffision;
  bool isValideValue = true;
  TextEditingController valueController = TextEditingController(text: '0');
  TextEditingController someController = TextEditingController(text: '0');

  Matier({required this.name, required this.coffision});

  void isValide() {
    isValideValue = double.tryParse(valueController.text)! >= 0 &&
        double.tryParse(valueController.text)! <= 20;
  }
}
