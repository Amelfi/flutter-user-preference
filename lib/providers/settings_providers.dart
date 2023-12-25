import 'package:flutter/material.dart';
import 'package:preference_app/preference/preference.dart';

class SettingsProvider extends ChangeNotifier {
  final prefs = Preference.prefs;
  static bool _isDarkMode = false;
  static int _gender = 1;
  static String _name = '';

  get isDarkMode {
    return prefs.getBool('isDarkMode') ?? _isDarkMode;
  }

  set isDarkMode(value) {
    _isDarkMode = value;
    prefs.setBool('isDarkMode', value);
    notifyListeners();
  }

  get gender {
    return prefs.getInt('gender') ?? _gender;
  }

  set gender(value) {
    _gender = value;
    prefs.setInt('gender', _gender);
    notifyListeners();
  }

  get name {
    return prefs.getString('name') ?? _name;
  }

  set name(value) {
    _name = value;
    prefs.setString('name', value);
    notifyListeners();
  }
}
