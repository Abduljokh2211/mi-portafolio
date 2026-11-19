import 'package:flutter/material.dart';
import 'package:mi_portafolio/themes/app_themes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firma del Desarrollador'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // avatar con la foto de perfil
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppThemes.accentBlue, width: 3),
                  image: const DecorationImage(
                    image: AssetImage('assets/img/perfil.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Abdul Aboujokh',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 4),

              const Text(
                'Desarrollador en formación',
                style: TextStyle(
                  color: AppThemes.textGray,
                  fontSize: 14,
                ),
              ),

              const SizedBox(height: 24),

              // linea divisoria con acento azul
              Container(
                width: 60,
                height: 3,
                decoration: BoxDecoration(
                  color: AppThemes.accentBlue,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),

              const SizedBox(height: 24),

              // tarjeta con la informacion de contacto
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    children: [
                      _contactItem(
                        icon: FontAwesomeIcons.envelope,
                        label: 'Email',
                        value: 'abduljokh2211@gmail.com',
                        onTap: () => _abrirUrl('mailto:abduljokh2211@gmail.com'),
                      ),
                      const Divider(color: AppThemes.borderColor, height: 1, indent: 56),
                      _contactItem(
                        icon: FontAwesomeIcons.github,
                        label: 'GitHub',
                        value: 'github.com/Abduljokh2211',
                        onTap: () => _abrirUrl('https://github.com/Abduljokh2211'),
                      ),
                      const Divider(color: AppThemes.borderColor, height: 1, indent: 56),
                      _contactItem(
                        icon: FontAwesomeIcons.telegram,
                        label: 'Telegram',
                        value: '@Abduljokh',
                        onTap: () => _abrirUrl('https://t.me/Abduljokh'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // item de contacto reutilizable
  Widget _contactItem({
    required FaIconData icon,
    required String label,
    required String value,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: FaIcon(icon, color: AppThemes.accentBlue, size: 18),
      title: Text(label, style: const TextStyle(fontSize: 13, color: AppThemes.textGray)),
      subtitle: Text(value, style: const TextStyle(color: Colors.white, fontSize: 14)),
      onTap: onTap,
    );
  }

  // funcion para abrir urls externas con el paquete url_launcher
  void _abrirUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}
