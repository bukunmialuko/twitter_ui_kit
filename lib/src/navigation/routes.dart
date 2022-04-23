// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter/material.dart';
import 'package:twitter_ui_kit/src/components/imagery/root.dart';

import '../../main.dart';
import '../components/items/root.dart';
import '../components/menu/root.dart';
import '../routes/routes.dart';
import 'fade_route.dart';

var routes = (RouteSettings settings) {
  switch (settings.name) {
    case MobileRoutes.root:
      return FadeRoute(
        page: const MyApp(),
      );

    case MobileRoutes.menuRoot:
      return FadeRoute(
        page: const MenuRootWidget(),
      );

    case MobileRoutes.imageryRoot:
      return FadeRoute(
        page: const ImageryRootWidget(),
      );

    case MobileRoutes.itemsRoot:
      return FadeRoute(
        page: const ItemsRootWidget(),
      );
  }
};
