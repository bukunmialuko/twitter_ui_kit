import 'dart:async';

import 'package:get_it/get_it.dart';

import '../navigation/navigation_service.dart';

class ServiceLocator {
  Future<void> setUp() async {
    GetIt.I.registerSingleton<NavigationService>(NavigationService()); //
  }
}
