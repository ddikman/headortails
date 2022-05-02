import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_root.dart';

void main() {
  runApp(const ProviderScope(child: AppRoot()));
}