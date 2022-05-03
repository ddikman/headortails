import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headortails/app/exceptions/not_provided_error.dart';

/// Returns a riverpod provider that is not yet assigned
Provider<T> lazyProvider<T extends Object>() {
  return Provider<T>((ref) => throw NotProvidedError(T.toString()));
}