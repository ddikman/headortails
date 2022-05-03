import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headortails/app/services/shared_preferences_local_storage.dart';
import 'package:headortails/app/state/local_storage_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_root.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sharedPreferences = await SharedPreferences.getInstance();
  runApp(ProviderScope(
    overrides: [
      localStorageProvider.overrideWithValue(SharedPreferencesLocalStorage(sharedPreferences))
    ],
    child: const AppRoot()
  ));
}