import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/home_component.dart';
import '../demo/riverpod/index.dart';
import '../demo/riverpod/pages/counter_page.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const HomeComponent();
});

var riverpodHomeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const RiverpodComponent();
});

var riverpodCounterPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const ProviderScope(child: CounterPage());
});
