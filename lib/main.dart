import 'package:flutter/material.dart';
import 'package:listflutter/router/app_router.dart';
import 'package:listflutter/theme/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoute.inicialRoute,
      routes: AppRoute.getMenuRoutes(),
      onGenerateRoute: AppRoute.onGenerateRoute,
      theme: TemaApp.lightTheme,
    );
  }
}
