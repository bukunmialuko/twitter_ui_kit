import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:twitter_ui_kit/src/components/menu/root.dart';
import 'package:twitter_ui_kit/src/di/service_locator.dart';
import 'package:twitter_ui_kit/src/navigation/routes.dart';
import 'package:twitter_ui_kit/src/routes/routes.dart';

import 'src/navigation/navigation_service.dart';

void main() async {
  await ServiceLocator().setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Twitter UI Kit',
        themeMode: ThemeMode.light,
        navigatorKey: GetIt.I.get<NavigationService>().navigatorKey,
        initialRoute: MobileRoutes.root,
        onGenerateRoute: routes,
        home: const MenuRoot(),
      ),
    );
  }
}
