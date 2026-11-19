import 'package:flutter/material.dart';
import 'package:mi_portafolio/themes/app_themes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: AppThemes.borderColor, width: 1),
        ),
      ),
      child: Center(
        // boton para redirigir a la pantalla de contacto
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, '/contact');
          },
          icon: const FaIcon(FontAwesomeIcons.solidEnvelope, size: 15),
          label: const Text(
            'Contáctame',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.3,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(color: AppThemes.borderColor, width: 1.2),
            ),
            elevation: 0,
          ),
        ),
      ),
    );
  }
}
