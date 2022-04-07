import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:i_bilding/core/widgets/navigation_bar/navigation_bar.dart';

class RouteGenerator {
  Route? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/nav_bar":
        return MaterialPageRoute(builder: (_) => const BottomBarView());
    }
  }
}
