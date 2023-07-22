import 'package:flutter/material.dart';

class AmazighAndSportPro extends ChangeNotifier {
  bool langAmazigh = false;
  bool sport = false;

  changeAmazigh() {
    langAmazigh = !langAmazigh;
    notifyListeners();
  }

  changeSport() {
    sport = !sport;
    notifyListeners();
  }

  reset() {
    sport = false;
    langAmazigh = false;
    notifyListeners();
  }
}
