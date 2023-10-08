import 'package:flutter/material.dart';
import 'package:listflutter/router/app_router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const ListViewScreen2(),
      initialRoute: AppRoute.inicialRoute,
      routes: AppRoute.routes,
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
