import 'package:flutter/material.dart';
import 'package:mi_portafolio/screens/screens.dart';

class AppRoutes {

  // ruta con la que arranca la aplicacion
  static const String initialRoute = '/';

  // mapa con todas las rutas para navegar con Navigator.pushNamed
  static Map<String, Widget Function(BuildContext)> routes = {
    '/'        : (BuildContext context) => const HomeScreen(),
    '/about'   : (BuildContext context) => const AboutScreen(),
    '/work'    : (BuildContext context) => const WorkScreen(),
    '/hobbies' : (BuildContext context) => const HobbiesScreen(),
    '/contact' : (BuildContext context) => const ContactScreen(),
  };

}
