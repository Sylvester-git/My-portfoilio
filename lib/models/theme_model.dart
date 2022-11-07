import 'package:flutter/material.dart';
import 'package:my_portfolio/models/theme_prefernces.dart';

class ThemeModel extends ChangeNotifier {
  bool _isdark = true;
  ThemePreferences _preferences = ThemePreferences();
  bool get isdark => _isdark;

  ThemeModel() {
    _isdark = false;
    _preferences = ThemePreferences();
    getpreference();
  }

  getpreference() async {
    _isdark = await _preferences.getTheme();
    notifyListeners();
  }

  set isDark(bool value) {
    _isdark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }
}
