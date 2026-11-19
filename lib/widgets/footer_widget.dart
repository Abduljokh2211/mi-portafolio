import 'package:flutter/material.dart';
import 'package:mi_portafolio/themes/app_themes.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: AppThemes.borderColor, width: 1),
        ),
      ),
      child: Column(
        children: [
          Text(
            'Abdul Aboujokh © 2026',
            style: TextStyle(
              color: AppThemes.textGray,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            'Hecho con Flutter 💙',
            style: TextStyle(
              color: AppThemes.textGray.withValues(alpha: 0.6),
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
