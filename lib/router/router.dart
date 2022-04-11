import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:i_bilding/core/widgets/navigation_bar/bottom_navigation_bar.dart';
import 'package:i_bilding/screens/contact_page/contact_view.dart';
import 'package:i_bilding/screens/created_pages/create_contract.dart/create_constrac.dart';
import 'package:i_bilding/screens/created_pages/created_invoice/created_invoice.dart';
import 'package:i_bilding/screens/filter_page/filter_view.dart';
import 'package:i_bilding/screens/history_page/history_page.dart';
import 'package:i_bilding/screens/profile_page/profile_view.dart';
import 'package:i_bilding/screens/saved_page/saved_view.dart';
import 'package:i_bilding/screens/search_page/search_view.dart';
import 'package:i_bilding/screens/singel_page/singel_view.dart';

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
      case "/contract_add":
        return MaterialPageRoute(builder: (_) => const CreateContract());
      case "/invoice_add":
        return MaterialPageRoute(builder: (_) => const CreateInvoice());
      case "/contract":
        return MaterialPageRoute(builder: (_) => const ContractstView());
      case "/history":
        return MaterialPageRoute(builder: (_) => const HistoryPage());
      case "/saved":
        return MaterialPageRoute(builder: (_) => const SavedView());
      case "/profile":
        return MaterialPageRoute(builder: (_) => const ProfileView());
      case "/singel":
        return MaterialPageRoute(builder: (_) => const SingelView());
    }
  }
}
