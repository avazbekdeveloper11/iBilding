import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:i_bilding/core/widgets/navigation_bar/bottom_navigation_bar.dart';
import 'package:i_bilding/screens/filter_page/filter_view.dart';
import 'package:i_bilding/screens/search_page/search_view.dart';

class RouteGenerator {
  Route? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/nav_bar":
        return MaterialPageRoute(builder: (_) => const BottomBarView());
      case "/filter":
        return MaterialPageRoute(builder: (_) => const FilterView());
      case "/search":
        return MaterialPageRoute(builder: (_) => const SearchView());
    }
  }
}
