import 'package:mi_portafolio/screens/home_screen.dart';
import 'package:mi_portafolio/screens/about_screen.dart';
import 'package:mi_portafolio/screens/work_screen.dart';
import 'package:mi_portafolio/screens/hobbies_screen.dart';
import 'package:mi_portafolio/screens/contact_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const initialRoute = '/';

  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (_) => const HomeScreen(),
    '/about': (_) => const AboutScreen(),
    '/work': (_) => const WorkScreen(),
    '/hobbies': (_) => const HobbiesScreen(),
    '/contact': (_) => const ContactScreen(),
  };
}
