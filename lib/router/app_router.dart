import 'package:flutter/material.dart';
import 'package:listflutter/models/models.dart';
import 'package:listflutter/screens/screens.dart';

class AppRoute {
  static const inicialRoute = 'home';
  static final menuOptions = <MenuOptions>{
    MenuOptions(
      route: 'listView',
      title: 'ListViewScreen',
      screen: const ListViewScreen(),
      icon: Icons.list,
    ),
    MenuOptions(
      route: 'listViewScreen2',
      title: 'ListViewScreen2',
      screen: const ListViewScreen2(),
      icon: Icons.list,
    ),
    MenuOptions(
      route: 'card',
      title: 'CardScreen',
      screen: const CardScreen(),
      icon: Icons.card_giftcard,
    ),
    MenuOptions(
      route: 'alert',
      title: 'AlertScreen',
      screen: const AlertScreen(),
      icon: Icons.notifications,
    ),
    MenuOptions(
      route: 'Avatar',
      title: 'AvatarScreen',
      screen: const AvatarScreen(),
      icon: Icons.person,
    ),
    MenuOptions(
      route: 'Animation',
      title: 'AnimationScreen',
      screen: const AnimationScreen(),
      icon: Icons.announcement,
    ),
    MenuOptions(
      route: 'Inputs',
      title: 'InputsScreen',
      screen: const InputsScreen(),
      icon: Icons.input,
    ),
    MenuOptions(
      route: 'Slider',
      title: 'SliderScreen',
      screen: const SliderScreen(),
      icon: Icons.safety_check_rounded,
    ),
    MenuOptions(
      route: 'List Build ',
      title: 'ListBuildScreen',
      screen: const ListBuilderScreen(),
      icon: Icons.list_rounded,
    ),
  };

  static Map<String, Widget Function(BuildContext)> getMenuRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final options in menuOptions) {
      appRoutes
          .addAll({options.route: (BuildContext context) => options.screen});
    }
    return appRoutes;
  }
  //static Map<String, Widget Function(BuildContext)> routes = {
  //  'home': (_) => const HomeScreen(),
  //  'listview2': (_) => const ListViewScreen2(),
  //  'listview1': (_) => ListView(),
  //  'card': (_) => const CardScreen(),
  //  'alert': (_) => const AlertScreen(),
  //};

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
