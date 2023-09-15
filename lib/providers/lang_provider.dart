import 'package:flutter/material.dart';

class langlocal extends ChangeNotifier {
  String lang = 'en';

  void changeLanguage(String newlocale) {
    if (newlocale == lang) {
      return;
    }
    lang = newlocale;
    notifyListeners();
  }
}
