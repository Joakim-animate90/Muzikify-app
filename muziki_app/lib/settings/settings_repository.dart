import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:muziki_app/models/theme_color_models.dart';
import 'package:muziki_app/settings/setting_colors.dart';

import '../models/models.dart';

class SettingsRepository with ChangeNotifier {
  static const String _settingsBoxName = "settings_box";
  final Box<Settings> _settingsBox;


  SettingsRepository._(this._settingsBox);


  static Future<SettingsRepository> create() async {
    Hive.registerAdapter(SettingsAdapter());
    var settingsBox = await Hive.openBox<Settings>(_settingsBoxName);
    return SettingsRepository._(settingsBox);
  }


  late ThemeModels tm = ThemeModels(cardGrad, isDark, accentColor, backGrad, bottomGrad, canvasColor, cardColor, colorHue, useSystemTheme);

  String get canvasColor => _settingsBox.get('canvasColor') as String;

  int get bottomGrad =>_settingsBox.get('bottomGrad') as int;

  int get colorHue =>  _settingsBox.get('colorHue') as int;

  bool get useSystemTheme => _settingsBox.get('useSystemTheme') as bool;

  String get accentColor => _settingsBox.get('themeColor') as String;

  int get cardGrad => _settingsBox.get('cardGrad') as int;

  String get cardColor => _settingsBox.get('cardColor') as String;

  bool get isDark => _settingsBox.get('darkMode') as bool;

  int get backGrad => _settingsBox.get('backGrad') as int;

  void refresh() {
    isDark;
    useSystemTheme;
    accentColor;
    cardColor;
    backGrad ;
    cardGrad;
    bottomGrad;
    colorHue;
    notifyListeners();
  }

  void switchTheme(Settings settings,{ bool? useSystemTheme, bool? isDark, bool notify = true}) {
    if (isDark != null) {
      settings.darkMode = isDark;
    }
    if (useSystemTheme != null) {
      settings.useSystemTheme = useSystemTheme;
    }
    _settingsBox.put(settings.darkMode, settings);
    Hive.box('settings').put('useSystemTheme', settings.useSystemTheme);
    if (notify) notifyListeners();
  }
  void switchColor(String color, int hue, Settings settings, {bool notify = true}) {
    settings.themeColor = color;
    settings.colorHue = hue;
    _settingsBox.put('themeColor', settings);
    tm.accentColor = color;
    _settingsBox.put('colorHue', settings);
    tm.colorHue = hue;
    if (notify) notifyListeners();
  }
  ThemeMode currentTheme(Settings settings) {
    if (tm.useSystemTheme == true) {
      return ThemeMode.system;
    } else {
      return _settingsBox.get('darkMode') != null ? ThemeMode.dark : ThemeMode.light;
    }
  }

  int currentHue() {
    return colorHue;
  }
}