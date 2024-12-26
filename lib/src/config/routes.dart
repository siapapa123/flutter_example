import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'route_handlers.dart';

class Routes {
  static String root = "/";
  static String riverpodHome = '/riverpod_home';
  static String riverpodCounterPage = '/riverpod_home/counter';

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      debugPrint("ROUTE WAS NOT FOUND !!!");
      return;
    });
    router.define(root, handler: rootHandler);
    router.define(riverpodHome, handler: riverpodHomeHandler);
    router.define(riverpodCounterPage, handler: riverpodCounterPageHandler);
  }
}
