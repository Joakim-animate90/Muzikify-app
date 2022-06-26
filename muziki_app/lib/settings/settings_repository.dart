import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

import '../models/models.dart';

class SettingsRepository with ChangeNotifier{
  static const String _settingsBoxName = "settings_box";
  final Box<Settings> _settingsBox;

  SettingsRepository._(this._settingsBox);

  static Future<SettingsRepository> create() async {
    Hive.registerAdapter(SettingsAdapter());
    var settingsBox = await Hive.openBox<Settings>(_settingsBoxName);
    return SettingsRepository._(settingsBox);
  }
