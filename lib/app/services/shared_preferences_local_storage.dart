import 'dart:convert';

import 'package:headortails/app/services/local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesLocalStorage extends LocalStorage {
  final SharedPreferences sharedPreferences;

  SharedPreferencesLocalStorage(this.sharedPreferences);

  @override
  bool? getBool(String key) {
    return sharedPreferences.getBool(key);
  }

  @override
  double? getDouble(String key) {
    return sharedPreferences.getDouble(key);
  }

  @override
  int? getInt(String key) {
    return sharedPreferences.getInt(key);
  }

  @override
  Map<String, dynamic>? getJson(String key) {
    final str = getString(key);
    return str != null ? jsonDecode(str) : null;
  }

  @override
  String? getString(String key) {
    return sharedPreferences.getString(key);
  }

  @override
  Future<void> setBool(String key, bool value) {
    return sharedPreferences.setBool(key, value);
  }

  @override
  Future<void> setDouble(String key, double value) {
    return sharedPreferences.setDouble(key, value);
  }

  @override
  Future<void> setInt(String key, int value) {
    return sharedPreferences.setInt(key, value);
  }

  @override
  Future<void> setString(String key, String value) {
    return sharedPreferences.setString(key, value);
  }

  @override
  Future<void> setJson(String key, Map<String, dynamic> value) {
    return setString(key, jsonEncode(value));
  }

}