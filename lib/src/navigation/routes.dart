// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter/material.dart';
import 'package:twitter_ui_kit/src/components/buttons/root.dart';
import 'package:twitter_ui_kit/src/components/imagery/root.dart';
import 'package:twitter_ui_kit/src/components/input/root.dart';
import 'package:twitter_ui_kit/src/components/navigation/root.dart';
import 'package:twitter_ui_kit/src/components/root.dart';
import 'package:twitter_ui_kit/src/root/root.dart';

import '../components/items/root.dart';
import '../components/menu/root.dart';
import '../routes/routes.dart';
import '../screens/publish/root.dart';
import 'fade_route.dart';

var routes = (RouteSettings settings) {
  switch (settings.name) {
    case MobileRoutes.root:
      return FadeRoute(
        page: const AppRootWidget(),
      );

    /// Screens
    case MobileRoutes.publishRoot:
      return FadeRoute(
        page: const PublishRootWidget(),
      );

    /// Components
    case MobileRoutes.components:
      return FadeRoute(
        page: const ComponentRootWidget(),
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

    case MobileRoutes.buttonsRoot:
      return FadeRoute(
        page: const ButtonsRootWidget(),
      );

    case MobileRoutes.inputRoot:
      return FadeRoute(
        page: const InputRootWidget(),
      );

    case MobileRoutes.navigationRoot:
      return FadeRoute(
        page: const NavigationRootWidget(),
      );
  }
};
