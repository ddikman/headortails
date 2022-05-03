abstract class LocalStorage {
  int? getInt(String key);
  double? getDouble(String key);
  bool? getBool(String key);
  String? getString(String key);

  Future<void> setInt(String key, int value);
  Future<void> setDouble(String key, double value);
  Future<void> setBool(String key, bool value);
  Future<void> setString(String key, String value);
}