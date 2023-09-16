import 'package:flutter/material.dart';

class appProvider extends ChangeNotifier {
  ThemeMode appTheme = ThemeMode.light;
  String lang = 'ar';

  void changeLanguage(String newlocale) {
    if (newlocale == lang) {
      return;
    }
    lang = newlocale;
    notifyListeners();
  }

  void changeTheme(ThemeMode newMood) {
    if (appTheme == newMood) {
      return;
    }
    appTheme = newMood;
    notifyListeners();
  }

  bool isdark() {
    return appTheme == ThemeMode.dark;
  }
}
