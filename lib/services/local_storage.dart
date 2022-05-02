class LocalStorage {
  Future<String> get(String key) {
    return Future.value(key);
  }

  Future<int?> getInt(String key) {
    return Future.value(1);
  }

  Future<void> save(String key, dynamic value) {
    return Future.value();
  }
}