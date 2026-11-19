import 'package:mi_portafolio/routes/app_routes.dart';
import 'package:mi_portafolio/themes/app_themes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abdul Portafolio',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.darkTheme,
      routes: AppRoutes.routes,
      initialRoute: AppRoutes.initialRoute,
    );
  }
}
