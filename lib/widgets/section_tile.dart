import 'package:flutter/material.dart';
import 'package:mi_portafolio/themes/app_themes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SectionTile extends StatelessWidget {

  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const SectionTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppThemes.accentBlue.withValues(alpha: 0.15),
            borderRadius: BorderRadius.circular(8),
          ),
          child: FaIcon(icon, color: AppThemes.accentBlue, size: 18),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(subtitle, style: TextStyle(
          color: AppThemes.textGray,
          fontSize: 12,
        )),
        trailing: const Icon(Icons.chevron_right, color: AppThemes.textGray),
        onTap: onTap,
      ),
    );
  }
}
