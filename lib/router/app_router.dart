import 'package:flutter/material.dart';
import 'package:listflutter/models/models.dart';
import 'package:listflutter/screens/screens.dart';

class AppRoute {
  static const inicialRoute = 'home';
  static final menuOptions = <MenuOptions>{
    
  };

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (_) => const HomeScreen(),
    'listview2': (_) => const ListViewScreen2(),
    'listview1': (_) => ListView(),
    'card': (_) => const CardScreen(),
    'alert': (_) => const AlertScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
