import 'package:flutter/material.dart';
import 'package:mi_portafolio/routes/app_routes.dart';
import 'package:mi_portafolio/themes/app_themes.dart';

// main lo mas limpio posible como pidio el profesor
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abdul Portafolio',
      debugShowCheckedModeBanner: false,
      // tema oscuro configurado en app_themes.dart
      theme: AppThemes.darkTheme,
      // manejo de rutas de app_routes.dart
      routes: AppRoutes.routes,
      initialRoute: AppRoutes.initialRoute,
    );
  }
}
