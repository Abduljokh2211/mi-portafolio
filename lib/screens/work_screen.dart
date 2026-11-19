import 'package:flutter/material.dart';
import 'package:mi_portafolio/themes/app_themes.dart';
import 'package:mi_portafolio/widgets/footer_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('¿Qué hago?'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // header con icono
          Container(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Column(
              children: [
                FaIcon(
                  FontAwesomeIcons.code,
                  size: 48,
                  color: AppThemes.accentBlue,
                ),
                const SizedBox(height: 12),
                Text(
                  'Desarrollo de Software',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // lo que hago
          _skillCard(
            icon: FontAwesomeIcons.mobile,
            titulo: 'Desarrollo Móvil',
            descripcion: 'Estoy aprendiendo Flutter y Dart para crear apps '
                'que funcionen tanto en Android como iOS. Este portafolio '
                'es parte de ese proceso jaja.',
          ),

          const SizedBox(height: 10),

          _skillCard(
            icon: FontAwesomeIcons.globe,
            titulo: 'Desarrollo Web',
            descripcion: 'Tengo conocimientos básicos de HTML, CSS y JavaScript. '
                'He hecho algunas páginas sencillas para practicar.',
          ),

          const SizedBox(height: 10),

          _skillCard(
            icon: FontAwesomeIcons.database,
            titulo: 'Bases de Datos',
            descripcion: 'He trabajado con MySQL y SQLite en proyectos de clase. '
                'Todavía me falta mucho por aprender pero voy agarrando el ritmo.',
          ),

          const SizedBox(height: 10),

          _skillCard(
            icon: FontAwesomeIcons.github,
            titulo: 'Control de Versiones',
            descripcion: 'Uso Git y GitHub para manejar mis proyectos. '
                'Al principio me costó pero ya le agarré el truco.',
          ),

          const SizedBox(height: 20),

          // tecnologias
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Tecnologías que uso', style: TextStyle(
                    color: AppThemes.accentBlue,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  )),
                  const Divider(color: AppThemes.borderColor),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      _techChip('Flutter'),
                      _techChip('Dart'),
                      _techChip('JavaScript'),
                      _techChip('HTML/CSS'),
                      _techChip('MySQL'),
                      _techChip('Git'),
                      _techChip('VS Code'),
                      _techChip('Firebase'),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 30),
          const FooterWidget(),
        ],
      ),
    );
  }

  Widget _skillCard({required IconData icon, required String titulo, required String descripcion}) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppThemes.accentBlue.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(8),
              ),
              child: FaIcon(icon, color: AppThemes.accentBlue, size: 20),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(titulo, style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  )),
                  const SizedBox(height: 4),
                  Text(descripcion, style: TextStyle(
                    color: AppThemes.textGray,
                    fontSize: 13,
                    height: 1.4,
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _techChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppThemes.accentBlue.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppThemes.accentBlue.withValues(alpha: 0.3)),
      ),
      child: Text(label, style: TextStyle(
        color: AppThemes.accentBlue,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      )),
    );
  }
}
