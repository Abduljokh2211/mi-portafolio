import 'package:flutter/material.dart';
import 'package:mi_portafolio/themes/app_themes.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // foto de perfil
            Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppThemes.accentBlue,
                  width: 2.5,
                ),
                image: const DecorationImage(
                  image: AssetImage('assets/img/perfil.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 14),
            const Text(
              'Abdul Aboujokh',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Estudiante · Desarrollador · Gamer',
              style: TextStyle(
                fontSize: 13,
                color: AppThemes.textGray,
              ),
            ),
            const SizedBox(height: 14),
            // mini bio
            Text(
              'Aprendiendo a crear cosas que funcionen y se vean bien. '
              'Un paso a la vez.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                color: Colors.white.withValues(alpha: 0.7),
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
