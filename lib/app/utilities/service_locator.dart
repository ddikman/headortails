import 'package:get_it/get_it.dart';

T getInstance<T extends Object>() {
  return GetIt.instance.get<T>();
}

void registerSingleton<T extends Object>(T instance) {
  GetIt.instance.registerSingleton(instance);
}

void registerFactory<T extends Object>(FactoryFunc<T> func) {
  GetIt.instance.registerFactory(func);
}