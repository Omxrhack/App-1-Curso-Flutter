import 'package:flutter/material.dart';

import 'package:listflutter/router/app_router.dart';
import 'package:listflutter/theme/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppRoute.menuOptions.elementAt(0).title),
      ),
      body: ListView.separated(
        itemCount: AppRoute.menuOptions.length,
        itemBuilder: (context, index) => ListTile(
          trailing: Icon(
            AppRoute.menuOptions.elementAt(index).icon,
            color: TemaApp.colorPrincipal,
          ),
          title: Text(AppRoute.menuOptions.elementAt(index).title),
          onTap: () {
            // final route = MaterialPageRoute(
            //    builder: (context) => const ListViewScreen2());
            //Navigator.push(context, route);

            Navigator.pushNamed(
                context, AppRoute.menuOptions.elementAt(index).route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
